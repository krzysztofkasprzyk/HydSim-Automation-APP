import re
import shutil
import os

# Wszystkie klucze, jakie są przetwarzane w plikach HS
PARAM_KEYS = [
    "Fluid Type", "Subsea Temperature", "Fixed viscosity value", "Density of fluid", "Fluid bulk modules",
    "Pretmpr", "Prevol", "Prepr", "Dia", "Len", "Rh", "Tau",
    "Pstart", "Pstop", "Pdepl", "Rhp_a", "Rha_r", "Pset", "Height", "Tamb",
    "PrRet", "PrTreshold", "QTreshold"
]

# Mapa ConnectedTo → Function (hex)
FUNCTION_MAP = {
    "HPU": "0x1012",
    "A": "0x1022",
    "B": "0x1032",
    "C": "0x1042",
    "D": "0x1052",
    "E": "0x1062"
}

FUNCTION_TO_NAME = {v: k for k, v in FUNCTION_MAP.items()}

def parse_hs_file(filepath):
    print(f"[parse_hs_file] Wczytuję plik: {filepath}")
    data = {key: "" for key in PARAM_KEYS}

    try:
        with open(filepath, "r", encoding="utf-8") as f:
            content = f.read()
    except Exception as e:
        print(f"[parse_hs_file] Błąd wczytywania pliku {filepath}: {e}")
        return data

    patterns = {
        "Fluid Type": r"(?i)(FLUID\s+)(.+)",
        "Subsea Temperature": r"Ftmpr\s+([\d\.\-]+)",
        "Fixed viscosity value": r"Visc\s+([\d\.\-]+)",
        "Density of fluid": r"Dens\s+([\d\.\-]+)",
        "Fluid bulk modules": r"Beta\s+([\d\.\-]+)",
        "Pretmpr": r"Pretmpr\s+([\d\.\-]+)",
        "Prevol": r"Prevol\s+([\d\.\-]+)",
        "Prepr": r"Prepr\s+([\d\.\-]+)",
        "Dia": r"Dia\s+([\d\.\-]+)",
        "Len": r"Len\s+([\d\.\-]+)",
        "Rh": r"Rh\s+([\d\.\-]+)",
        "Tau": r"Tau\s+([\d\.\-]+)",
        "Pstart": r"Pstart\s+([\d\.\-]+)",
        "Pstop": r"Pstop\s+([\d\.\-]+)",
        "Pdepl": r"Pdepl\s+([\d\.\-]+)",
        "Rhp_a": r"Rhp_a\s+([\d\.\-]+)",
        "Rha_r": r"Rha_r\s+([\d\.\-]+)",
        "Pset": r"Pset\s+([\d\.\-]+)",
        "Height": r"Height\s+([\d\.\-]+)",
        "Tamb": r"Tamb\s+([\d\.\-]+)",
        "PrRet": r"PrRet\s+([\d\.\-]+)",
        "PrTreshold": r"PrTreshold\s+([\d\.\-]+)",
        "QTreshold": r"QTreshold\s+([\d\.\-]+)"
    }

    # Usuwamy komentarze (linie zaczynające się od ';')
    lines = [line for line in content.splitlines() if not line.strip().startswith(';')]
    filtered_text = "\n".join(lines)

    # Parsowanie prostych parametrów
    for key, pattern in patterns.items():
        match = re.search(pattern, filtered_text, re.IGNORECASE)
        if match:
            val = match.group(2).strip() if key == "Fluid Type" else match.group(1).strip()
            if key == "Fluid Type" and val.lower() == "used in entire system":
                print("[parse_hs_file] Ignoruję 'used in entire system' – Fluid Type nie został przypisany")
                val = ""
            data[key] = val
            print(f"[parse_hs_file] Znaleziono {key}: {val}")

    # Szukamy Template'ów (pojedyncze litery)
    template_set = set()
    for line in content.splitlines():
        line = line.strip()
        if line.startswith("Template"):
            parts = line.split()
            if len(parts) >= 2:
                template_name = parts[-1].strip()
                if template_name.isalpha() and len(template_name) == 1:
                    template_set.add(template_name)

    data["templates"] = sorted(template_set)
    print(f"[parse_hs_file] Wykryto template'y: {data['templates']}")

    # Odczyt MANIFOLD Ms i LINE Us dla każdego Template
    in_manifold = False
    in_line = False
    current_template = None

    for line in content.splitlines():
        stripped = line.strip()

        if stripped.startswith("MANIFOLD") and "Ms" in stripped:
            in_manifold = True
            in_line = False
            current_template = None

        elif in_manifold:
            if stripped.startswith("Template"):
                parts = stripped.split()
                if len(parts) >= 2:
                    current_template = parts[1]

            elif stripped.startswith("Depth") and current_template:
                data[f"{current_template}_Depth"] = stripped.split()[-1]

            elif stripped.startswith("Function") and current_template:
                hex_code = stripped.split()[-1]
                conn_name = FUNCTION_TO_NAME.get(hex_code, "")
                if conn_name:
                    data[f"{current_template}_ConnectedTo"] = conn_name

            elif stripped == "" or stripped.startswith("MANIFOLD"):
                in_manifold = False
                current_template = None

        if stripped.startswith("LINE") and "Us" in stripped:
            in_line = True
            in_manifold = False
            current_template = None

        elif in_line:
            if stripped.startswith("Template"):
                parts = stripped.split()
                if len(parts) >= 2:
                    current_template = parts[1]

            elif stripped.startswith("Length") and current_template:
                data[f"{current_template}_Length"] = stripped.split()[-1]
                print(f"[parse_hs_file] Znaleziono Length dla template {current_template}: {data[f'{current_template}_Length']}")

            elif stripped == "" or stripped.startswith("LINE"):
                in_line = False
                current_template = None

    # Logowanie odczytanych danych
    for t in sorted(template_set):
        depth = data.get(f"{t}_Depth", "-")
        length = data.get(f"{t}_Length", "-")
        conn = data.get(f"{t}_ConnectedTo", "-")
        print(f"[Template {t}] Depth: {depth} | Connected to: {conn} | Length: {length}")

    return data

def save_hs_file(data, original_filepath, save_directory, suffix="_up"):
    print(f"[save_hs_file] Zapisuję plik do folderu: {save_directory}")
    os.makedirs(save_directory, exist_ok=True)

    base_name = os.path.basename(original_filepath)
    name, ext = os.path.splitext(base_name)
    new_name = f"{name}{suffix}{ext}"
    save_path = os.path.join(save_directory, new_name)
    backup_path = save_path + ".bak"

    try:
        # Backup istniejącego pliku wynikowego
        if os.path.exists(save_path):
            shutil.copy(save_path, backup_path)
            print(f"[save_hs_file] Stworzono backup pliku: {backup_path}")

        with open(original_filepath, "r", encoding="utf-8") as f:
            lines = f.readlines()

        in_manifold = False
        in_line = False
        current_template = None

        for i, line in enumerate(lines):
            stripped = line.strip()

            # MANIFOLD Ms
            if stripped.startswith("MANIFOLD") and "Ms" in stripped:
                in_manifold = True
                in_line = False
                current_template = None

            elif in_manifold:
                if stripped.startswith("Template"):
                    parts = stripped.split()
                    if len(parts) >= 2:
                        current_template = parts[1]

                elif stripped.startswith("Depth") and current_template:
                    key = f"{current_template}_Depth"
                    if key in data and data[key]:
                        lines[i] = f"  Depth        {data[key]}\n"
                        print(f"[save_hs_file] Ustawiono Depth → Template {current_template}: {data[key]}")

                elif stripped.startswith("Function") and current_template:
                    key = f"{current_template}_ConnectedTo"
                    if key in data:
                        conn_name = data[key]
                        func_value = FUNCTION_MAP.get(conn_name)
                        if func_value:
                            lines[i] = f"  Function     {func_value}\n"
                            print(f"[save_hs_file] Ustawiono Function → Template {current_template}: {func_value}")

                elif stripped == "" or stripped.startswith("MANIFOLD"):
                    in_manifold = False
                    current_template = None

            # LINE Us
            if stripped.startswith("LINE") and "Us" in stripped:
                in_line = True
                in_manifold = False
                current_template = None

            elif in_line:
                if stripped.startswith("Template"):
                    parts = stripped.split()
                    if len(parts) >= 2:
                        current_template = parts[1]

                elif stripped.startswith("Length") and current_template:
                    key = f"{current_template}_Length"
                    value = data.get(key, None)
                    # zapisujemy Length jeśli wartość istnieje i nie jest pusta
                    if value is not None and str(value).strip() != "":
                        lines[i] = f"  Length                          {value}\n"
                        print(f"[save_hs_file] Ustawiono Length → Template {current_template}: {value}")
                    else:
                        print(f"[save_hs_file] Pomijam ustawianie Length dla {current_template} (wartość pusta lub None)")

                elif stripped == "" or stripped.startswith("LINE"):
                    in_line = False
                    current_template = None

        # Zapis nowego pliku
        with open(save_path, "w", encoding="utf-8") as f:
            f.writelines(lines)

        print(f"[save_hs_file] Plik zapisany jako: {save_path}")
        return True

    except Exception as e:
        print(f"[save_hs_file] Błąd zapisu pliku: {e}")
        return False
