import re
import shutil
import os

# Lista wszystkich kluczy parametrów w pliku HS
PARAM_KEYS = [
    "Fluid Type", "Subsea Temperature", "Fixed viscosity value", "Density of fluid", "Fluid bulk modules",
    "Pretmpr", "Prevol", "Prepr", "Dia", "Len", "Rh", "Tau",
    "Pstart", "Pstop", "Pdepl", "Rhp_a", "Rha_r", "Pset", "Height", "Tamb",
    "PrRet", "PrTreshold", "QTreshold"
]

# Mapowanie nazw połączeń na wartości funkcji (hex) oraz odwrotnie
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
    """
    Parsuje plik HS i zwraca słownik danych.
    """
    print(f"[parse_hs_file] Wczytywanie pliku: {filepath}")
    data = {key: "" for key in PARAM_KEYS}


    try:
        with open(filepath, "r", encoding="utf-8") as f:
            content = f.read()
    except Exception as e:
        print(f"[parse_hs_file] Błąd odczytu pliku: {e}")
        return data
        # Dodanie SCM counts po odczytaniu pliku
    scm_values = extract_scm_counts(filepath)
    print(f"[parse_hs_file] SCM dane: {scm_values}")
    data.update(scm_values)

    # Usuwanie komentarzy
    lines = [line for line in content.splitlines() if not line.strip().startswith(';')]
    filtered_text = "\n".join(lines)

    # Wzorce regex do szybkich parametrów
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

    # Parsowanie szybkich parametrów globalnych
    for key, pattern in patterns.items():
        match = re.search(pattern, filtered_text, re.IGNORECASE)
        if match:
            val = match.group(2 if key == "Fluid Type" else 1).strip()
            if key == "Fluid Type" and val.lower() == "used in entire system":
                val = ""
            data[key] = val
            print(f"[parse_hs_file] {key}: {val}")

    # Template'y
    templates = {
        line.split()[-1].strip()
        for line in content.splitlines()
        if line.strip().startswith("Template") and len(line.split()) >= 2
    }
    templates = {t for t in templates if t.isalpha() and len(t) == 1}
    data["templates"] = sorted(templates)
    print(f"[parse_hs_file] Wykryte template'y: {data['templates']}")

    # Parsowanie MANIFOLD + LINE
    in_manifold = in_line = False
    current_template = None

    for line in content.splitlines():
        stripped = line.strip()

        # MANIFOLD
        if stripped.startswith("MANIFOLD") and "Ms" in stripped:
            in_manifold = True
            in_line = False
            current_template = None
            continue

        if in_manifold:
            if stripped.startswith("Template"):
                current_template = stripped.split()[1]
            elif stripped.startswith("Depth") and current_template:
                value = stripped.split()[-1]
                data[f"{current_template}_Depth"] = value
                print(f"[MANIFOLD] {current_template}_Depth = {value}")
            elif stripped.startswith("Function") and current_template:
                hex_code = stripped.split()[-1]
                name = FUNCTION_TO_NAME.get(hex_code, "")
                if name:
                    data[f"{current_template}_ConnectedTo"] = name
                    print(f"[MANIFOLD] {current_template}_ConnectedTo = {name}")
            elif stripped == "" or stripped.startswith("MANIFOLD"):
                in_manifold = False
                current_template = None

        # LINE Us (Supply Umbilical)
        if stripped.startswith("LINE") and "Us" in stripped:
            in_line = True
            in_manifold = False
            current_template = None
            continue

        if in_line:
            if stripped.startswith("Template"):
                current_template = stripped.split()[1]
                print(f"[LINE Us] Przetwarzam template: {current_template}")
            elif current_template:
                tokens = stripped.split()
                if len(tokens) >= 2:
                    key, value = tokens[0], tokens[-1]
                    allowed = {
                        "Diameter", "Length", "Nplugs", "Rhup", "Rhdo", "Trnum",
                        "Beta", "Binc", "Bexp", "VEcorr", "Type", "Mwp"
                    }
                    if key in allowed:
                        full_key = f"{current_template}_{key}"
                        data[full_key] = value
                        print(f"[LINE Us] {full_key} = {value}")
            if stripped == "" or stripped.startswith("LINE"):
                in_line = False
                current_template = None

    return data


def save_hs_file(data, original_filepath, save_directory, suffix="_up"):
    """
    Zapisuje zmodyfikowane dane do nowego pliku HS.
    Tworzy backup poprzedniego pliku o tej samej nazwie.
    """
    print(f"[save_hs_file] Zapis do: {save_directory}")
    os.makedirs(save_directory, exist_ok=True)

    base_name = os.path.basename(original_filepath)
    name, ext = os.path.splitext(base_name)
    new_name = f"{name}{suffix}{ext}"
    save_path = os.path.join(save_directory, new_name)
    backup_path = save_path + ".bak"

    try:
        if os.path.exists(save_path):
            shutil.copy(save_path, backup_path)
            print(f"[save_hs_file] Backup: {backup_path}")

        with open(original_filepath, "r", encoding="utf-8") as f:
            lines = f.readlines()

        in_manifold = in_line = False
        current_template = None

        for i, line in enumerate(lines):
            stripped = line.strip()

            # === Sekcja MANIFOLD ===
            if stripped.startswith("MANIFOLD") and "Ms" in stripped:
                in_manifold = True
                in_line = False
                current_template = None
                continue

            if in_manifold:
                if stripped.startswith("Template"):
                    current_template = stripped.split()[1]
                elif stripped.startswith("Depth") and current_template:
                    key = f"{current_template}_Depth"
                    if key in data and data[key]:
                        lines[i] = f"  Depth        {data[key]}\n"
                        print(f"[save_hs_file] Depth → {current_template}: {data[key]}")
                elif stripped.startswith("Function") and current_template:
                    key = f"{current_template}_ConnectedTo"
                    if key in data:
                        conn = data[key]
                        func_value = FUNCTION_MAP.get(conn)
                        if func_value:
                            lines[i] = f"  Function     {func_value}\n"
                            print(f"[save_hs_file] Function → {current_template}: {func_value}")
                elif stripped == "" or stripped.startswith("MANIFOLD"):
                    in_manifold = False
                    current_template = None

            # === Sekcja LINE Us (Supply Umbilical) ===
            if stripped.startswith("LINE") and "Us" in stripped:
                in_line = True
                in_manifold = False
                current_template = None
                continue

            if in_line:
                if stripped.startswith("Template"):
                    current_template = stripped.split()[1]
                elif current_template:
                    tokens = stripped.split()
                    if len(tokens) >= 2:
                        key = tokens[0]
                        full_key = f"{current_template}_{key}"
                        if full_key in data:
                            value = data[full_key]
                            lines[i] = f"  {key:<30} {value}\n"
                            print(f"[save_hs_file] {key} → {current_template}: {value}")
                if stripped == "" or stripped.startswith("LINE"):
                    in_line = False
                    current_template = None

        with open(save_path, "w", encoding="utf-8") as f:
            f.writelines(lines)

        print(f"[save_hs_file] Zapisano plik: {save_path}")
        return True

    except Exception as e:
        print(f"[save_hs_file] Błąd zapisu: {e}")
        return False

def extract_scm_counts(filepath):
    """
    Szuka sekcji ';;; Subsea Control Module' i wyciąga template oraz wartość Tree.
    Zwraca słownik { 'A_SCM': 3, 'B_SCM': 5, ... }.
    """
    scm_data = {}
    in_scm_section = False
    current_template = None

    with open(filepath, 'r', encoding='utf-8') as f:
        for line in f:
            stripped = line.strip()

            if stripped.startswith(";;; Subsea Control Module"):
                in_scm_section = True
                current_template = None
                continue

            if in_scm_section:
                if stripped.startswith("Template"):
                    current_template = stripped.split()[-1]

                elif stripped.startswith("Tree") and current_template:
                    try:
                        tree_count = int(stripped.split()[-1])
                        key = f"{current_template}_SCM"
                        if key not in scm_data or tree_count > scm_data[key]:
                            scm_data[key] = tree_count
                    except ValueError:
                        pass

                elif stripped == "" or stripped.startswith(";;;"):
                    in_scm_section = False
                    current_template = None

    return scm_data

def extract_scm_counts(filepath):
    """
    Parsuje sekcje ';;; Subsea Control Module' i zbiera maksymalne wartości 'Tree'
    dla każdego Template (np. 'A', 'B') → 'X_SCM': <max(Tree)>
    """
    scm_data = {}
    in_scm_section = False
    temp_tree = None
    temp_template = None

    with open(filepath, 'r', encoding='utf-8') as f:
        for line in f:
            stripped = line.strip()

            # Start nowej sekcji SCM
            if stripped.startswith(";;; Subsea Control Module"):
                print("[SCM] Wykryto sekcję Subsea Control Module")
                in_scm_section = True
                temp_tree = None
                temp_template = None
                continue

            if in_scm_section:
                tokens = stripped.split()

                if len(tokens) >= 2:
                    key = tokens[0].lower()
                    value = tokens[-1]

                    if key == "tree":
                        try:
                            temp_tree = int(value)
                            print(f"[SCM] Wczytano Tree = {temp_tree}")
                        except ValueError:
                            print(f"[SCM] Błąd parsowania Tree w linii: {stripped}")

                    elif key == "template":
                        temp_template = value.strip()
                        print(f"[SCM] Wczytano Template = {temp_template}")

                        # Jeśli mamy i Tree i Template — zapisz
                        if temp_tree is not None:
                            field = f"{temp_template}_SCM"
                            if field not in scm_data or temp_tree > scm_data[field]:
                                scm_data[field] = temp_tree
                                print(f"[SCM] Zapisano {field} = {temp_tree}")

                # Zakończenie sekcji
                elif stripped == "" or stripped.startswith(";;;"):
                    in_scm_section = False

    print(f"[SCM] Wynik końcowy: {scm_data}")
    return scm_data

