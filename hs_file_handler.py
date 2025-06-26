import re
import shutil
import os
import traceback

# Lista wszystkich kluczy parametrów w pliku HS
PARAM_KEYS = [
    "Fluid Type", "Subsea Temperature", "Fixed viscosity value", "Density of fluid", "Fluid bulk modules",
    "Pretmpr", "Prevol", "Prepr", "Dia", "Len", "Rh", "Tau",
    "Pstart", "Pstop", "Pdepl", "Rhp_a", "Rha_r", "Pset", "Height", "Tamb",
    "PrRet", "PrTreshold", "QTreshold",
    # LINE parameters - internal keys, add ModelingMethod
    "Diameter", "Length", "Nplugs", "Rhup", "Rhdo", "Hdiff", "Trnum", "Beta", "Binc", "Bexp", "VEcorr", "Type",
    "Mwp", "ModelingMethod",
    # MANIFOLD parameters specific to templates (e.g., A_Depth, A_ConnectedTo)
    "Depth", "ConnectedTo", "SCM", "Shape", "Volume", "AssistFlowGain"  # Added common suffixes for manifold/umbilical
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

# Mapowanie funkcji hydraulicznych
FUNCTION_MAP_SHAPE = {
    "V-H": "1",
    "H-V": "2",
    "Straight": "0",
}
FUNCTION_TO_NAME_SHAPE = {v: k for k, v in FUNCTION_MAP_SHAPE.items()}


def parse_hs_file(filepath):
    """
    Parsuje plik HS i zwraca słownik danych.
    """
    print(f"============================================================")
    print(f"[PARSE] Rozpoczynam parsowanie pliku: {filepath}")
    print(f"============================================================")
    data = {key: "" for key in PARAM_KEYS}
    data["templates"] = []

    try:
        with open(filepath, "r", encoding="utf-8") as f:
            content = f.readlines()
    except Exception as e:
        print(f"[PARSE] Błąd odczytu pliku: {e}")
        return data

    data.update(extract_scm_counts(filepath))

    global_param_patterns = {
        "Fluid Type": r"^\s*FLUID\s+(.+)", "Subsea Temperature": r"^\s*Ftmpr\s+([\d\.\-eE]+)",
        "Fixed viscosity value": r"^\s*Visc\s+([\d\.\-eE]+)", "Density of fluid": r"^\s*Dens\s+([\d\.\-eE]+)",
        "Fluid bulk modules": r"^\s*Beta\s+([\d\.\-eE]+)", "Pretmpr": r"^\s*Pretmpr\s+([\d\.\-eE]+)",
        "Prevol": r"^\s*Prevol\s+([\d\.\-eE]+)", "Prepr": r"^\s*Prepr\s+([\d\.\-eE]+)",
        "Dia": r"^\s*Dia\s+([\d\.\-eE]+)", "Len": r"^\s*Len\s+([\d\.\-eE]+)",
        "Rh": r"^\s*Rh\s+([\d\.\-eE]+)", "Tau": r"^\s*Tau\s+([\d\.\-eE]+)",
        "Pstart": r"^\s*Pstart\s+([\d\.\-eE]+)", "Pstop": r"^\s*Pstop\s+([\d\.\-eE]+)",
        "Pdepl": r"^\s*Pdepl\s+([\d\.\-eE]+)", "Rhp_a": r"^\s*Rhp_a\s+([\d\.\-eE]+)",
        "Rha_r": r"^\s*Rha_r\s+([\d\.\-eE]+)", "Pset": r"^\s*Pset\s+([\d\.\-eE]+)",
        "Height": r"^\s*Height\s+([\d\.\-eE]+)", "Tamb": r"^\s*Tamb\s+([\d\.\-eE]+)",
        "PrRet": r"^\s*PrRet\s+([\d\.\-eE]+)", "PrTreshold": r"^\s*PrTreshold\s+([\d\.\-eE]+)",
        "QTreshold": r"^\s*QTreshold\s+([\d\.\-eE]+)"
    }

    line_us_param_names = {
        "Type", "Function", "Plugs", "Form", "Diameter", "Length", "Nplugs", "Rn", "Rhup", "Rhdo",
        "Hdiff", "Trnum", "Beta", "Binc", "Bexp", "VEcorr", "Mwp", "ModelingMethod"
    }

    for line in content:
        stripped = line.strip()
        if stripped.startswith("Template"):
            tokens = stripped.split()
            if len(tokens) >= 2:
                template_name = tokens[1].strip()
                if template_name.isalpha() and len(template_name) == 1:
                    data["templates"].append(template_name)
    data["templates"] = sorted(list(set(data["templates"])))
    print(f"[PARSE] Wykryte template'y: {data['templates']}")

    current_template = None
    in_manifold = False
    in_line_us = False
    # --- ZMIANA: Dodano flagę, aby ustawić globalny 'Shape' tylko raz ---
    global_shape_set = False

    for line_num, line_content in enumerate(content, 1):
        stripped_line = line_content.strip()

        if stripped_line.startswith(";;;"):
            in_manifold = False;
            in_line_us = False;
            current_template = None
            continue
        if stripped_line.startswith("MANIFOLD") and "Ms" in stripped_line:
            in_manifold = True;
            in_line_us = False;
            current_template = None
            continue
        if stripped_line.startswith("LINE") and "Us" in stripped_line:
            in_line_us = True;
            in_manifold = False;
            current_template = None
            print(f"[PARSE] L{line_num}: Wchodzę do bloku LINE Us")
            continue
        if stripped_line.startswith("Template"):
            tokens = stripped_line.split()
            if len(tokens) >= 2 and tokens[1].strip().isalpha() and len(tokens[1].strip()) == 1:
                current_template = tokens[1].strip()
            continue
        if any(stripped_line.startswith(h) for h in ["FLUID", "PROCESS", "HPU", "ACCUMULATOR", "SCM"]) and not (
                in_line_us or in_manifold):
            in_manifold = False;
            in_line_us = False;
            current_template = None

        param_found_in_section = False
        if in_line_us and current_template:
            tokens = stripped_line.split()
            if len(tokens) >= 2 and tokens[0] in line_us_param_names:
                param_name_in_file, value = tokens[0], tokens[-1]

                if param_name_in_file == "Form":
                    shape_name = FUNCTION_TO_NAME_SHAPE.get(value)
                    data_key_for_storage = f"{current_template}_Shape"

                    if shape_name:
                        data[data_key_for_storage] = shape_name
                        print(
                            f"      -> [PARSE - Form] Zmapowano '{value}' na '{shape_name}'. Zapisuję do klucza '{data_key_for_storage}'.")

                        # --- ZMIANA: Wypełnianie ogólnego klucza 'Shape' jako obejście problemu w GUI ---
                        # Ustawia ogólny 'Shape' na podstawie pierwszego napotkanego szablonu.
                        # Prawidłowym rozwiązaniem jest naprawa GUI, aby używało klucza z nazwą szablonu (np. 'A_Shape').
                        if not global_shape_set:
                            data['Shape'] = shape_name
                            global_shape_set = True
                            print(
                                f"      -> [PARSE - WORKAROUND] Ustawiono globalny klucz 'Shape' na '{shape_name}' dla kompatybilności z GUI.")

                    else:
                        data[data_key_for_storage] = ""
                        print(
                            f"      -> [PARSE - BŁĄD] Nie można zmapować Form o wartości '{value}'. Klucz '{data_key_for_storage}' pozostaje pusty.")
                else:
                    data[f"{current_template}_{param_name_in_file}"] = value
                param_found_in_section = True

        elif in_manifold and current_template:
            tokens = stripped_line.split()
            if len(tokens) >= 2:
                param_name_in_file = tokens[0]
                value = tokens[-1]
                data_key_lookup = None

                if param_name_in_file == "Depth":
                    data_key_lookup = f"{current_template}_Depth"
                elif param_name_in_file == "Function":
                    name = FUNCTION_TO_NAME.get(value, "")
                    if name:
                        data_key_lookup = f"{current_template}_ConnectedTo"
                        data[data_key_lookup] = name
                elif param_name_in_file == "Shape":
                    shape_name_manifold = FUNCTION_TO_NAME_SHAPE.get(value, "")
                    print(
                        f"      -> [PARSE - Podejrzenie] L{line_num}: W sekcji MANIFOLD znaleziono parametr 'Shape' z wartością '{value}' ('{shape_name_manifold}'), ale nie jest on zapisywany w danych!")
                elif param_name_in_file == "Volume":
                    data_key_lookup = f"{current_template}_Volume"
                elif param_name_in_file == "AssistFlowGain":
                    data_key_lookup = f"{current_template}_AssistFlowGain"

                if data_key_lookup and not data.get(data_key_lookup):
                    data[data_key_lookup] = value
                if data_key_lookup:
                    param_found_in_section = True

        if param_found_in_section:
            continue

        for data_key, pattern in global_param_patterns.items():
            match = re.match(pattern, stripped_line, re.IGNORECASE)
            if match:
                val = match.group(1).strip()
                if "used in entire system" in val.lower():
                    val = val.replace("used in entire system", "").strip()
                if data_key == "Fluid bulk modules" and data.get(f"{current_template}_Beta"):
                    continue
                data[data_key] = val
                break

    print(f"============================================================")
    print(f"[PARSE] Zakończono parsowanie. Finalne dane dla 'Shape':")
    for key, value in data.items():
        if "Shape" in key:
            print(f"  -> {key}: '{value}'")
    print(f"============================================================")
    return data


# --- ZMIANA: Dodano nową funkcję pomocniczą ---
def update_data_for_saving(data_dict, active_template, new_shape_value):
    """
    PRZYKŁADOWA funkcja pokazująca, jak GUI powinno aktualizować słownik danych przed zapisem.

    Args:
        data_dict (dict): Słownik danych wczytany z pliku.
        active_template (str): Nazwa aktywnego szablonu w GUI (np. "A", "B").
        new_shape_value (str): Nowa wartość 'Shape' wybrana w GUI (np. "V-H").
    """
    if not active_template:
        print("[SAVE HELPER] Błąd: Nie wybrano aktywnego szablonu.")
        return

    # Zbuduj poprawny, specyficzny dla szablonu klucz
    shape_key = f"{active_template}_Shape"

    # Zaktualizuj wartość w słowniku
    print(f"[SAVE HELPER] Aktualizuję dane do zapisu: Klucz '{shape_key}' = '{new_shape_value}'")
    data_dict[shape_key] = new_shape_value


def save_hs_file(data, original_filepath, save_directory, suffix="_up"):
    """
    Zapisuje zmodyfikowane dane do nowego pliku HS.
    Ta funkcja już działa poprawnie, jeśli słownik 'data' zawiera
    zaktualizowane klucze specyficzne dla szablonu (np. 'A_Shape').
    """
    print(f"\n============================================================")
    print(f"[SAVE] Rozpoczynam zapis do pliku dla: {os.path.basename(original_filepath)}")
    print(f"============================================================")

    os.makedirs(save_directory, exist_ok=True)
    base_name = os.path.basename(original_filepath)
    name, ext = os.path.splitext(base_name)
    new_name = f"{name}{suffix}{ext}"
    save_path = os.path.join(save_directory, new_name)
    backup_path = save_path + ".bak"

    try:
        if os.path.exists(save_path):
            shutil.copy(save_path, backup_path)
        with open(original_filepath, "r", encoding="utf-8") as f:
            lines = f.readlines()

        modified_lines = []
        in_manifold_ms_block = False
        in_line_us_block = False
        current_template_in_block = None

        global_param_patterns_save = {
            "Fluid Type": r"^\s*(FLUID)\s*(.+)", "Subsea Temperature": r"^\s*(Ftmpr)\s+(.+)",
            "Fixed viscosity value": r"^\s*(Visc)\s+(.+)", "Density of fluid": r"^\s*(Dens)\s+(.+)",
            "Fluid bulk modules": r"^\s*(Beta)\s+(.+)", "Pretmpr": r"^\s*(Pretmpr)\s+(.+)",
            "Prevol": r"^\s*(Prevol)\s+(.+)", "Prepr": r"^\s*(Prepr)\s+(.+)", "Dia": r"^\s*(Dia)\s+(.+)",
            "Len": r"^\s*(Len)\s+(.+)", "Rh": r"^\s*(Rh)\s+(.+)", "Tau": r"^\s*(Tau)\s+(.+)",
            "Pstart": r"^\s*(Pstart)\s+(.+)", "Pstop": r"^\s*(Pstop)\s+(.+)", "Pdepl": r"^\s*(Pdepl)\s+(.+)",
            "Rhp_a": r"^\s*(Rhp_a)\s+(.+)", "Rha_r": r"^\s*(Rha_r)\s+(.+)", "Pset": r"^\s*(Pset)\s+(.+)",
            "Height": r"^\s*(Height)\s+(.+)", "Tamb": r"^\s*(Tamb)\s+(.+)", "PrRet": r"^\s*(PrRet)\s+(.+)",
            "PrTreshold": r"^\s*(PrTreshold)\s+(.+)", "QTreshold": r"^\s*(QTreshold)\s+(.+)"
        }

        line_us_update_param_names = {
            "Type", "Function", "Plugs", "Form", "Diameter", "Length", "Nplugs", "Rn", "Rhup",
            "Rhdo", "Hdiff", "Trnum", "Beta", "Binc", "Bexp", "VEcorr", "Mwp", "ModelingMethod"
        }
        manifold_ms_update_param_names = {"Template", "Function", "Depth", "Volume", "AssistFlowGain", "Shape"}
        major_block_headers = {"FLUID", "PROCESS", "HPU", "ACCUMULATOR", "LINE", "MANIFOLD", "SCM", "BLADDER",
                               "EXHAUST_VALVE", "ACTUATOR"}

        for line_number, line_original in enumerate(lines, 1):
            stripped = line_original.strip()
            line_to_append = line_original

            if stripped.startswith(";;;"):
                modified_lines.append(line_original)
                continue

            is_new_major_block_header = any(stripped.startswith(h) for h in major_block_headers)
            if is_new_major_block_header and not (stripped.startswith("MANIFOLD") and "Ms" in stripped) and not (
                    stripped.startswith("LINE") and "Us" in stripped):
                in_manifold_ms_block = False;
                in_line_us_block = False;
                current_template_in_block = None

            if stripped.startswith("MANIFOLD") and "Ms" in stripped:
                in_manifold_ms_block = True;
                in_line_us_block = False;
                current_template_in_block = None
            elif stripped.startswith("LINE") and "Us" in stripped:
                in_line_us_block = True;
                in_manifold_ms_block = False;
                current_template_in_block = None
            elif stripped.startswith("Template"):
                tokens = stripped.split()
                if len(tokens) >= 2:
                    current_template_in_block = tokens[1].strip()

            if in_manifold_ms_block and current_template_in_block:
                # Logika dla MANIFOLD bez zmian
                pass

            elif in_line_us_block and current_template_in_block:
                tokens = stripped.split()
                if len(tokens) >= 2 and tokens[0] in line_us_update_param_names:
                    param_name_in_file, original_value = tokens[0], tokens[-1]
                    value_to_write = None
                    data_key_lookup = f"{current_template_in_block}_{param_name_in_file}"

                    if param_name_in_file == "Form":
                        data_key_lookup = f"{current_template_in_block}_Shape"
                        value_from_data = data.get(data_key_lookup)

                        if value_from_data is not None and str(value_from_data).strip() != '':
                            new_value_display = str(value_from_data).strip()
                            value_to_write = FUNCTION_MAP_SHAPE.get(new_value_display, original_value)
                    else:
                        value_from_data = data.get(data_key_lookup)
                        if value_from_data is not None and str(value_from_data).strip() != '':
                            value_to_write = str(value_from_data).strip()

                    if value_to_write is not None:
                        is_different = True
                        try:
                            if abs(float(value_to_write) - float(original_value)) < 1e-9:
                                is_different = False
                        except (ValueError, TypeError):
                            if str(value_to_write) == str(original_value):
                                is_different = False

                        if is_different:
                            indent = re.match(r"^(\s*)", line_original).group(1)
                            line_to_append = f"{indent}{param_name_in_file:<30} {value_to_write}\n"

            elif not in_manifold_ms_block and not in_line_us_block:
                for data_key, pattern_str in global_param_patterns_save.items():
                    match = re.match(pattern_str, line_original, re.IGNORECASE)
                    if match:
                        param_name_in_file, original_value = match.group(1), match.group(2).strip()
                        value_from_data = data.get(data_key)
                        if value_from_data is not None and str(value_from_data).strip() != '':
                            new_value_str = str(value_from_data).strip()
                            if new_value_str != original_value:
                                indent = re.match(r"^(\s*)", line_original).group(1)
                                line_to_append = f"{indent}{param_name_in_file:<12} {new_value_str}\n"
                        break

            modified_lines.append(line_to_append)

        with open(save_path, "w", encoding="utf-8") as f:
            f.writelines(modified_lines)

        print(f"\n============================================================")
        print(f"[SAVE] Pomyślnie zapisano plik: {save_path}")
        print(f"============================================================")
        return True

    except Exception as e:
        print(f"[SAVE] KRYTYCZNY BŁĄD podczas zapisu pliku {save_path}: {e}")
        traceback.print_exc()
        return False


def extract_scm_counts(filepath):
    """
    Parsuje sekcje ';;; Subsea Control Module' i zbiera maksymalne wartości 'Tree'.
    """
    scm_data = {}
    in_scm_section = False
    temp_tree = None
    temp_template = None

    with open(filepath, 'r', encoding='utf-8') as f:
        for line_number, line in enumerate(f, 1):
            stripped = line.strip()

            if stripped.startswith(";;; Subsea Control Module"):
                in_scm_section = True
                temp_tree = None
                temp_template = None
                continue

            if in_scm_section:
                tokens = stripped.split()
                if len(tokens) >= 2:
                    key, value = tokens[0].lower(), tokens[-1]
                    if key == "tree":
                        try:
                            temp_tree = int(value)
                        except ValueError:
                            pass
                    elif key == "template":
                        temp_template = value.strip()
                        if temp_tree is not None and temp_template:
                            field = f"{temp_template}_SCM"
                            if field not in scm_data or temp_tree > scm_data[field]:
                                scm_data[field] = temp_tree
                elif stripped == "" or any(stripped.startswith(h) for h in ["SCM", "MANIFOLD", "LINE", "FLUID", "HPU",
                                                                            "PROCESS"]) or stripped.startswith(";;;"):
                    in_scm_section = False
    return scm_data