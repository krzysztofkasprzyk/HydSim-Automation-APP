import tkinter as tk
import ttkbootstrap as ttk
from ttkbootstrap.constants import *
from constants import FLUID_TYPES

# Mapowanie funkcji hydraulicznych
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
    "V-H": "2",
    "H-V": "1",
    "Straight": "0",
}
FUNCTION_TO_NAME_SHAPE = {v: k for k, v in FUNCTION_MAP_SHAPE.items()}


class ParamsTab(ttk.Frame):
    """
    Klasa tworzy zakładkę z parametrami oraz checkboxami do selekcji.
    """

    def __init__(self, parent, sections):
        super().__init__(parent)
        self.configure(style="LightPurple.TFrame")

        self.fields = {}
        self.supply_data = {}

        self.check_vars = {}

        # Checkbox "Zaznacz/Odznacz wszystkie"
        self.select_all_var = tk.BooleanVar(value=True)
        ttk.Checkbutton(
            self,
            text="Zaznacz/Odznacz wszystkie",
            variable=self.select_all_var,
            command=self.toggle_all_checkboxes,
            bootstyle="purple-round-toggle"
        ).pack(anchor="w", pady=(5, 5), padx=5)

        # Sekcje i pola
        for section_name, params in sections:
            ttk.Label(
                self,
                text=section_name,
                bootstyle="purple",
                font=("Segoe UI", 12, "bold")
            ).pack(anchor="w", pady=(10, 2), padx=5)

            for display_name, key, unit in params:
                self._create_field(display_name, key, unit)

    def _create_field(self, display_name, key, unit):
        frame = ttk.Frame(self)
        frame.pack(fill="x", pady=2, padx=5)

        check_var = tk.BooleanVar(value=True)
        self.check_vars[key] = check_var
        ttk.Checkbutton(frame, variable=check_var, bootstyle="purple-round-toggle").pack(side="left", padx=(0, 5))

        ttk.Label(frame, text=display_name, width=25, anchor="w", font=("Segoe UI", 10, "bold")).pack(side="left")

        if display_name == "Fluid Type":
            var = tk.StringVar()
            combo = ttk.Combobox(frame, textvariable=var, state="readonly", width=20, bootstyle="secondary")
            combo['values'] = FLUID_TYPES
            combo.pack(side="left", padx=5)
            self.fields[key] = var
        else:
            entry = ttk.Entry(frame, width=22, bootstyle="secondary")
            entry.pack(side="left", padx=5)
            self.fields[key] = entry

        if unit:
            ttk.Label(frame, text=unit, width=10, anchor="w", font=("Segoe UI", 10, "bold")).pack(side="left", padx=5)

        # === Status LED
        indicator = tk.Label(frame, width=2, height=1, bg="#d9534f")
        indicator.pack(side="left", padx=5)
        self.fields[key + "_status"] = indicator

    def toggle_all_checkboxes(self):
        value = self.select_all_var.get()
        for var in self.check_vars.values():
            var.set(value)

    def set_fields(self, data):
        """
        Ustawia wartości pól z podanego słownika.
        """
        for key, widget in self.fields.items():
            if key.endswith("_status"):
                continue  # pomiń status LED

            value = data.get(key, "")
            if isinstance(widget, tk.StringVar):
                widget.set(str(value))
            else:
                widget.delete(0, tk.END)
                widget.insert(0, str(value))

            self.check_vars[key].set(bool(value))

            # === Kolor statusu
            status_widget = self.fields.get(key + "_status")
            if status_widget:
                color = "#5cb85c" if key in data and data[key] else "#d9534f"
                status_widget.config(bg=color)

    def get_fields(self):
        """
        Zwraca dane tylko z zaznaczonych pól.
        """
        result = {}
        for key, widget in self.fields.items():
            if key.endswith("_status") or not self.check_vars.get(key, tk.BooleanVar(value=True)).get():
                continue
            try:
                result[key] = widget.get()
            except Exception:
                result[key] = ""
        return result


class HydraulicDistributionTab(ttk.Frame):
    """
    Zakładka dla danych związanych z rozprowadzeniem hydraulicznym (Manifoldy, Umbilicale).
    """

    def __init__(self, parent):
        super().__init__(parent)

        self.fields = {}
        self.check_vars = {}
        self.template_frames = []
        self.supply_data = {}
        self.select_all_var = tk.BooleanVar(value=True)
        ttk.Checkbutton(
            self,
            text="Zaznacz/Odznacz wszystkie",
            variable=self.select_all_var,
            command=self.toggle_all_checkboxes,
            bootstyle="purple-round-toggle"
        ).pack(anchor="w", padx=10, pady=(10, 0))

        # Tworzymy scrollowalny canvas
        self.canvas = tk.Canvas(self, borderwidth=0, background="#ffffff")
        self.scroll_y = ttk.Scrollbar(self, orient="vertical", command=self.canvas.yview)
        self.scrollable_frame = ttk.Frame(self.canvas)

        self.scrollable_frame.bind(
            "<Configure>",
            lambda e: self.canvas.configure(scrollregion=self.canvas.bbox("all"))
        )

        self.canvas.create_window((0, 0), window=self.scrollable_frame, anchor="nw")
        self.canvas.configure(yscrollcommand=self.scroll_y.set)
        self.canvas.pack(side="left", fill="both", expand=True)
        self.scroll_y.pack(side="right", fill="y")

        # Dropdown na górze
        top_frame = ttk.Frame(self.scrollable_frame)
        top_frame.pack(fill="x", padx=10, pady=(10, 0))
        ttk.Label(top_frame, text="Hydraulic Distribution State:").pack(side="left", padx=(0, 10))

        self.state_var = tk.StringVar(value="Open")
        ttk.Combobox(
            top_frame,
            textvariable=self.state_var,
            values=["Closed", "Open"],
            state="readonly",
            width=10,
            bootstyle="secondary"
        ).pack(side="left")

    def toggle_all_checkboxes(self):
        value = self.select_all_var.get()
        for var in self.check_vars.values():
            var.set(value)

    def set_fields(self, data):
        """
        Buduje interfejs dla każdego template'u na podstawie danych z pliku HS.
        Ustawia wartości pól: Depth, ConnectedTo, SCM, Length (z fallbackiem z _Length).
        Dodaje status LED: zielony jeśli wartość jest, czerwony jeśli brak.
        """
        self.supply_data = data

        # Usunięcie starych ramek
        for frame in self.template_frames:
            frame.destroy()
        self.template_frames.clear()
        self.fields.clear()
        self.check_vars.clear()

        # Pobranie listy template'ów
        templates = data.get("templates", [])
        if not templates:
            print("Brak szablonów do wyświetlenia.")
            return

        for template in sorted(templates):
            if not template.isalpha() or len(template) != 1:
                continue

            # === Manifold frame ===
            style = ttk.Style()
            style.configure("Custom.TLabelframe.Label", font=("Segoe UI", 12, "bold"))

            frame = ttk.LabelFrame(self.scrollable_frame, text=f"Manifold {template}", bootstyle="primary",
                                   style="Custom.TLabelframe")
            frame.pack(fill="x", padx=10, pady=10)
            self.template_frames.append(frame)

            self._add_labeled_entry(frame, f"{template}_Depth", "Depth", default="300.0", bold=True)
            self._add_labeled_entry(frame, f"{template}_SCM", "#SCM", default="1")
            self._add_labeled_combobox(frame, f"{template}_ConnectedTo", "Connected to", list(FUNCTION_MAP.keys()),
                                       bold=True)

            # === Umbilical subframe ===
            umb_frame = ttk.LabelFrame(frame, text="Corresponding Umbilicals", bootstyle="primary")
            umb_frame.pack(fill="x", padx=5, pady=5)

            self._add_labeled_entry(umb_frame, f"{template}_Length_Umb", "Length", default="5000.0")
            self._add_labeled_button(umb_frame, f"{template}_Supply", "Supply", enabled=True,
                                     command=lambda t=template: self.open_umb_config(t))
            self._add_labeled_button(umb_frame, f"{template}_Return", "Return", enabled=False)
            self._add_labeled_combobox(umb_frame, f"{template}_Shape", "Shape", list(FUNCTION_MAP_SHAPE.keys()),
                                       bold=True)

            ttk.Button(umb_frame, text="Configure...", command=lambda t=template: self.open_config_dialog(t)).pack(
                anchor="e", pady=5, padx=5)

            # === POCZĄTEK ZMODYFIKOWANEGO BLOKU ===
            # === Ustawienie wartości pól z danych ===
            keys_to_set = [f"{template}_Depth", f"{template}_SCM", f"{template}_ConnectedTo", f"{template}_Shape"]
            for key in keys_to_set:
                if key in data and key in self.fields:
                    widget = self.fields[key]
                    value = data.get(key)

                    if value:  # Ustawiamy tylko, jeśli wartość istnieje
                        if "Shape" in key:
                            print(
                                f"[GUI UPDATE] Manifold '{template}': Poprawnie odczytano i ustawiono 'Shape' na '{value}' w interfejsie graficznym.")

                        if hasattr(widget, "delete") and hasattr(widget, "insert"):
                            widget.delete(0, tk.END)
                            widget.insert(0, str(value))
                        elif hasattr(widget, "set"):
                            widget.set(str(value))

                    # === Status LED
                    status_widget = self.fields.get(key + "_status")
                    if status_widget:
                        color = "#5cb85c" if value else "#d9534f"
                        status_widget.config(bg=color)
            # === KONIEC ZMODYFIKOWANEGO BLOKU ===

            # === Ustawienie Length_Umb (z fallbackiem z _Length) ===
            length_umb_key = f"{template}_Length_Umb"
            fallback_key = f"{template}_Length"
            value = data.get(length_umb_key) or data.get(fallback_key)
            if value is not None and length_umb_key in self.fields:
                widget = self.fields[length_umb_key]
                if hasattr(widget, "delete") and hasattr(widget, "insert"):
                    widget.delete(0, tk.END)
                    widget.insert(0, str(value))

            # === Status LED dla Length_Umb
            status_widget = self.fields.get(length_umb_key + "_status")
            if status_widget:
                color = "#5cb85c" if value else "#d9534f"
                status_widget.config(bg=color)

    def get_fields(self):
        """
        Zwraca dane z zakładki, łącząc wartości z widocznych kontrolek
        z danymi z okien dialogowych (przechowywanymi w self.supply_data).
        """
        # 1. Zacznij od danych z okienek 'Supply', które są autorytatywne po kliknięciu 'Apply'.
        result = self.supply_data.copy()

        # 2. Zaktualizuj słownik `result` o wartości z kontrolek, które są
        #    bezpośrednio na głównej zakładce (np. Depth, ConnectedTo).
        #    To zapewni, że najnowsze zmiany z tych pól zostaną uwzględnione.
        for key, widget in self.fields.items():
            if key.endswith("_status"):
                continue

            # Jeśli kontrolka istnieje (nie pochodzi ze zniszczonego okna dialogowego)
            if widget.winfo_exists():
                # Jeśli pole jest zaznaczone, pobierz jego wartość
                if self.check_vars.get(key, tk.BooleanVar(value=True)).get():
                    try:
                        # To nadpisze wczytaną wartość `result` aktualną wartością z GUI
                        result[key] = widget.get()
                    except Exception:
                        result[key] = ""  # Bezpiecznik
                # Jeśli pole nie jest zaznaczone, usuń je z wyników
                else:
                    if key in result:
                        del result[key]

        # 3. Zwróć ostateczny, połączony słownik danych
        return result

    def _add_labeled_entry(self, parent, key, label_text, default="", state="normal", bold=False):
        frame = ttk.Frame(parent)
        frame.pack(fill="x", padx=5, pady=2)

        self.check_vars[key] = tk.BooleanVar(value=True)
        ttk.Checkbutton(frame, variable=self.check_vars[key], bootstyle="purple-round-toggle").pack(side="left",
                                                                                                    padx=(0, 5))
        font_style = ("Segoe UI", 10, "bold") if bold else ("Segoe UI", 10)
        ttk.Label(frame, text=label_text, width=20, font=font_style).pack(side="left")
        entry = ttk.Entry(frame, width=20, state=state)
        entry.insert(0, default)
        entry.pack(side="left")
        self.fields[key] = entry

        # === Status LED
        indicator = tk.Label(frame, width=2, height=1, bg="#d9534f")
        indicator.pack(side="left", padx=5)
        self.fields[key + "_status"] = indicator

    def _add_labeled_combobox(self, parent, key, label_text, values, bold=False):
        frame = ttk.Frame(parent)
        frame.pack(fill="x", padx=5, pady=2)

        self.check_vars[key] = tk.BooleanVar(value=True)
        ttk.Checkbutton(frame, variable=self.check_vars[key], bootstyle="purple-round-toggle").pack(side="left",
                                                                                                    padx=(0, 5))

        font_style = ("Segoe UI", 10, "bold") if bold else ("Segoe UI", 10)
        ttk.Label(frame, text=label_text, width=20, font=font_style).pack(side="left")
        combo = ttk.Combobox(frame, values=values, state="readonly", width=18)
        if values:
            combo.current(0)
        combo.pack(side="left")
        self.fields[key] = combo

        indicator = tk.Label(frame, width=2, height=1, bg="#d9534f")
        indicator.pack(side="left", padx=5)
        self.fields[key + "_status"] = indicator

    def _add_labeled_button(self, parent, key, label_text, enabled=True, command=None):
        frame = ttk.Frame(parent)
        frame.pack(fill="x", padx=5, pady=2)

        self.check_vars[key] = tk.BooleanVar(value=True)
        ttk.Checkbutton(frame, variable=self.check_vars[key], bootstyle="purple-round-toggle").pack(side="left",
                                                                                                    padx=(0, 5))

        btn = ttk.Button(
            frame,
            text=label_text,
            state="normal" if enabled else "disabled",
            command=command
        )
        btn.pack(side="left", fill="x", expand=True)
        self.fields[key] = btn

    # Konfiguracja szczegółów umbilicali – tymczasowo tylko okno

    def open_config_dialog(self, template):
        window = tk.Toplevel(self)
        window.title(f"Manifold {template} Configuration")
        window.geometry("400x650")
        window.resizable(False, False)

        # === Deployment Depth (to samo co template_Depth) ===
        ttk.Label(window, text="Deployment Depth:", font=("Segoe UI", 10, "bold")).pack(anchor="w", padx=10,
                                                                                        pady=(10, 0))
        depth_key = f"{template}_Depth"
        depth_var = tk.StringVar(value=self.fields[depth_key].get())

        def update_depth(*args):
            self.fields[depth_key].delete(0, tk.END)
            self.fields[depth_key].insert(0, depth_var.get())

        depth_var.trace_add("write", update_depth)

        ttk.Entry(window, textvariable=depth_var, width=20).pack(anchor="w", padx=10, pady=5)

        # === Assisting (dropdown) ===
        ttk.Label(window, text="Assisting:", font=("Segoe UI", 10, "bold")).pack(anchor="w", padx=10, pady=(10, 0))
        assisting_combo = ttk.Combobox(window, values=["None"], state="readonly", width=20)
        assisting_combo.set("None")
        assisting_combo.pack(anchor="w", padx=10, pady=5)

        # === Lista komponentów z przyciskiem „...” ===
        ttk.Label(window, text="Subsystems:", font=("Segoe UI", 10, "bold")).pack(anchor="w", padx=10, pady=(15, 5))
        for label in ["Accumulator", "Safety Valve", "Bladder Exhaust Valve", "Receiver"]:
            row = ttk.Frame(window)
            row.pack(fill="x", padx=10, pady=3)
            ttk.Label(row, text=label, width=25).pack(side="left")
            ttk.Button(row, text="...", width=3).pack(side="left")

        # === Dolne przyciski ===
        btn_frame = ttk.Frame(window)
        btn_frame.pack(fill="x", pady=10, padx=10)
        ttk.Button(btn_frame, text="OK", command=window.destroy).pack(side="right", padx=5)
        ttk.Button(btn_frame, text="Cancel", command=window.destroy).pack(side="right", padx=5)

    def open_umb_config(self, template):
        window = tk.Toplevel(self)
        window.title(f"Supply umbilical Us-{template}")
        window.geometry("700x700")
        window.resizable(False, False)

        notebook = ttk.Notebook(window)
        notebook.pack(fill="both", expand=True, padx=10, pady=10)
        line_tab = ttk.Frame(notebook)
        notebook.add(line_tab, text="Line parameters")

        def add_param(parent, label, key_suffix, unit="", disabled=False):
            key = f"{template}_{key_suffix}"
            row = ttk.Frame(parent)
            row.pack(anchor="w", padx=10, pady=5)

            font_style = ("Segoe UI", 10, "bold") if label in ["ID of line", "Length of line.",
                                                               "Number of plugs"] else ("Segoe UI", 10)
            ttk.Label(row, text=label, width=35, font=font_style).pack(side="left")

            var = tk.StringVar()
            value = str(self.supply_data.get(key, "")).strip()
            var.set(value)

            entry = ttk.Entry(row, textvariable=var, width=10, state="disabled" if disabled else "normal")
            entry.pack(side="left")

            if unit:
                ttk.Label(row, text=unit).pack(side="left", padx=5)

            color = "#5cb85c" if value else "#d9534f"
            indicator = tk.Label(row, width=2, height=1, bg=color)
            indicator.pack(side="left", padx=5)

            def update_led(*_):
                indicator.config(bg="#5cb85c" if var.get().strip() else "#d9534f")

            var.trace_add("write", update_led)

            self.fields[key] = entry
            self.fields[key + "_status"] = indicator
            self.check_vars[key] = tk.BooleanVar(value=True)

        def add_combo(parent, label, key_suffix, values, default=None):
            key = f"{template}_{key_suffix}"
            row = ttk.Frame(parent)
            row.pack(anchor="w", padx=10, pady=5)

            ttk.Label(row, text=label, width=35).pack(side="left")

            var = tk.StringVar()
            value = str(self.supply_data.get(key, default or values[0])).strip()
            var.set(value)

            combo = ttk.Combobox(row, textvariable=var, values=values, state="readonly", width=15)
            combo.pack(side="left")

            color = "#5cb85c" if value else "#d9534f"
            indicator = tk.Label(row, width=2, height=1, bg=color)
            indicator.pack(side="left", padx=5)

            def update_led(*_):
                indicator.config(bg="#5cb8se" if var.get().strip() else "#d9534f")

            var.trace_add("write", update_led)

            self.fields[key] = combo
            self.fields[key + "_status"] = indicator
            self.check_vars[key] = tk.BooleanVar(value=True)

        # === Parametry
        add_param(line_tab, "ID of line", "Diameter", "mm")
        add_param(line_tab, "Length of line.", "Length", "m")
        add_param(line_tab, "Number of plugs", "Nplugs")
        add_param(line_tab, "Hydraulic upstream restriction", "Rhup", "bar/(l/s)^2")
        add_param(line_tab, "Hydraulic downstream restriction", "Rhdo", "bar/(l/s)^2")
        add_param(line_tab, "Transition Number lam/turb flow", "Trnum")
        add_param(line_tab, "Effective stiffness of fluid and line", "Beta", "bar")
        add_param(line_tab, "Linear increase in bulk modulus: Binc", "Binc")
        add_param(line_tab, "Volumetric expansion correction (VEcorr)", "VEcorr")
        add_combo(line_tab, "Type", "Type", ["Constant", "Variable"], "Constant")

        btn_frame = ttk.Frame(window)
        btn_frame.pack(fill="x", padx=10, pady=10)
        ttk.Button(btn_frame, text="OK", command=window.destroy).pack(side="right", padx=5)

        def apply_supply_changes():
            # Create a temporary dictionary to hold changes from the dialog
            dialog_data = {}
            for key_suffix in ["Diameter", "Length", "Nplugs", "Rhup", "Rhdo", "Trnum", "Beta", "Binc", "VEcorr",
                               "Type"]:
                key = f"{template}_{key_suffix}"
                if key in self.fields and self.fields[key].winfo_exists():
                    widget = self.fields[key]
                    try:
                        value = widget.get()
                        dialog_data[key] = value
                    except Exception:
                        dialog_data[key] = ""

            # Update the main supply_data dictionary
            self.supply_data.update(dialog_data)

            print(f"[Apply] Zapisano dane dla Umbilical {template}:")
            for k, v in dialog_data.items():
                print(f"  {k} = {v}")

            # Optionally close the window after applying
            # window.destroy()

        ttk.Button(btn_frame, text="Apply", command=apply_supply_changes).pack(side="right", padx=5)
        ttk.Button(btn_frame, text="Cancel", command=window.destroy).pack(side="right", padx=5)