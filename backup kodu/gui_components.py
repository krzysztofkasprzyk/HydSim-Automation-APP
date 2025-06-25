import tkinter as tk
import ttkbootstrap as ttk
from ttkbootstrap.constants import *
from constants import FLUID_TYPES


FUNCTION_MAP = {
    "HPU": "0x1012",
    "A": "0x1022",
    "B": "0x1032",
    "C": "0x1042",
    "D": "0x1052",
    "E": "0x1062"
}
FUNCTION_TO_NAME = {v: k for k, v in FUNCTION_MAP.items()}

class ParamsTab(ttk.Frame):
    def __init__(self, parent, sections):
        super().__init__(parent)
        self.configure(style="LightPurple.TFrame")

        self.fields = {}
        self.check_vars = {}

        # Checkbox do zaznaczania/odznaczania wszystkich
        self.select_all_var = tk.BooleanVar(value=True)
        select_all_chk = ttk.Checkbutton(
            self,
            text="Zaznacz/Odznacz wszystkie",
            variable=self.select_all_var,
            command=self.toggle_all_checkboxes,
            bootstyle="purple-round-toggle"
        )
        select_all_chk.pack(anchor="w", pady=(5, 5), padx=5)

        for section_name, params in sections:
            section_label = ttk.Label(self, text=section_name, bootstyle="purple", font=("Segoe UI", 12, "bold"))
            section_label.pack(anchor="w", pady=(10, 2), padx=5)

            for display_name, key, unit in params:
                frame = ttk.Frame(self)
                frame.pack(fill="x", pady=2, padx=5)

                check_var = tk.BooleanVar(value=True)
                chk = ttk.Checkbutton(frame, variable=check_var, bootstyle="purple-round-toggle")
                chk.pack(side="left", padx=(0, 5))
                self.check_vars[key] = check_var

                label = ttk.Label(frame, text=display_name, width=25, anchor="w",font=("Segoe UI", 10, "bold"))
                label.pack(side="left")

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
                    unit_label = ttk.Label(frame, text=unit, width=10, anchor="w", font=("Segoe UI", 10, "bold"))

                    unit_label.pack(side="left", padx=5)

    def toggle_all_checkboxes(self):
        value = self.select_all_var.get()
        for var in self.check_vars.values():
            var.set(value)

    def set_fields(self, data):
        for key, widget in self.fields.items():
            value = data.get(key, "")
            if isinstance(widget, tk.StringVar):
                widget.set(str(value))
            else:
                widget.delete(0, tk.END)
                widget.insert(0, str(value))
            self.check_vars[key].set(bool(value))

    def get_fields(self):
        result = {}
        for key, widget in self.fields.items():
            if not self.check_vars[key].get():
                continue
            try:
                result[key] = widget.get()
            except Exception:
                result[key] = ""
        return result

class HydraulicDistributionTab(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)

        self.fields = {}
        self.check_vars = {}
        self.template_frames = []

        self.select_all_var = tk.BooleanVar(value=True)
        select_all_chk = ttk.Checkbutton(
            self,
            text="Zaznacz/Odznacz wszystkie",
            variable=self.select_all_var,
            command=self.toggle_all_checkboxes,
            bootstyle="purple-round-toggle"
        )
        select_all_chk.pack(anchor="w", padx=10, pady=(10, 0))

        # === Scrollable canvas ===
        canvas = tk.Canvas(self, borderwidth=0, background="#ffffff")
        scroll_y = ttk.Scrollbar(self, orient="vertical", command=canvas.yview)
        self.scrollable_frame = ttk.Frame(canvas)

        self.scrollable_frame.bind(
            "<Configure>",
            lambda e: canvas.configure(scrollregion=canvas.bbox("all"))
        )

        canvas.create_window((0, 0), window=self.scrollable_frame, anchor="nw")
        canvas.configure(yscrollcommand=scroll_y.set)

        canvas.pack(side="left", fill="both", expand=True)
        scroll_y.pack(side="right", fill="y")

        # === Dropdown na górze ===
        top_frame = ttk.Frame(self.scrollable_frame)
        top_frame.pack(fill="x", padx=10, pady=(10, 0))

        ttk.Label(top_frame, text="Hydraulic Distribution State:").pack(side="left", padx=(0, 10))

        self.state_var = tk.StringVar(value="Open")
        state_combo = ttk.Combobox(
            top_frame,
            textvariable=self.state_var,
            values=["Closed", "Open"],
            state="readonly",
            width=10,
            bootstyle="secondary"
        )
        state_combo.pack(side="left")

    def set_fields(self, data):
        print("==> set_fields called in HydraulicDistributionTab")
        print("Data keys:", data.keys())

        # Czyścimy poprzednie ramki
        for frame in self.template_frames:
            frame.destroy()
        self.template_frames.clear()

        templates = data.get("templates", [])
        if not templates:
            print("No templates found in data")
            return

        for i, template in enumerate(sorted(templates)):
            print(f"Processing template: {template}")

            if not template.isalpha() or len(template) != 1:
                print(f"Skipping invalid template: {template}")
                continue

            frame = ttk.LabelFrame(self.scrollable_frame, text=f"Manifold {template}", bootstyle="primary")
            frame.pack(fill="x", padx=10, pady=10)
            self.template_frames.append(frame)

            # Tworzymy widgety
            self._add_labeled_entry(frame, f"{template}_Name", "Name", default=template, state="readonly")
            self._add_labeled_entry(frame, f"{template}_Depth", "Depth", default="300.0")
            self._add_labeled_entry(frame, f"{template}_SCM", "#SCM", default="1")
            connected_options = list(FUNCTION_MAP.keys())
            self._add_labeled_combobox(frame, f"{template}_ConnectedTo", "Connected to", connected_options)

            # Dodajemy entry dla umbilical length z innym kluczem (np. z suffixem _Umb)
            umb_frame = ttk.LabelFrame(frame, text="Corresponding Umbilicals", bootstyle="primary")
            umb_frame.pack(fill="x", padx=5, pady=5)

            self._add_labeled_entry(umb_frame, f"{template}_Length_Umb", "Length", default="5000.0")  # <-- inny klucz!
            self._add_labeled_button(
                umb_frame,
                f"{template}_Supply",
                "Supply",
                enabled=True,
                command=lambda t=template: self.open_umb_config(t)
            )
            self._add_labeled_button(umb_frame, f"{template}_Return", "Return", enabled=False)
            self._add_labeled_combobox(umb_frame, f"{template}_Shape", "Shape", ["V-H"])

            btn_umb = ttk.Button(umb_frame, text="Configure...", command=lambda t=template: self.open_umb_config(t))
            btn_umb.pack(anchor="e", pady=(5, 5), padx=5)

            # Teraz ustawiamy wartości tylko jeśli klucze istnieją i widgety mają odpowiednie metody
            for key in [f"{template}_Depth", f"{template}_SCM", f"{template}_Name", f"{template}_ConnectedTo"]:
                if key in data and key in self.fields:
                    widget = self.fields[key]
                    value = data[key]
                    if hasattr(widget, "delete") and hasattr(widget, "insert"):
                        widget.delete(0, tk.END)
                        widget.insert(0, str(value))
                    elif hasattr(widget, "set"):
                        widget.set(str(value))
                    else:
                        print(f"Nie można ustawić wartości dla widgetu {key}")

            # Ustawiamy długość umbilical (inny klucz!)
            length_umb_key = f"{template}_Length_Umb"
            if length_umb_key in data and length_umb_key in self.fields:
                widget = self.fields[length_umb_key]
                value = data[length_umb_key]
                if hasattr(widget, "delete") and hasattr(widget, "insert"):
                    widget.delete(0, tk.END)
                    widget.insert(0, str(value))
                else:
                    print(f"Nie można ustawić wartości dla widgetu {length_umb_key}")

    def _add_labeled_entry(self, parent, key, label_text, default="", state="normal"):
        frame = ttk.Frame(parent)
        frame.pack(fill="x", padx=5, pady=2)

        check_var = tk.BooleanVar(value=True)
        chk = ttk.Checkbutton(frame, variable=check_var, bootstyle="purple-round-toggle")
        chk.pack(side="left", padx=(0, 5))
        self.check_vars[key] = check_var

        ttk.Label(frame, text=label_text, width=20).pack(side="left")
        entry = ttk.Entry(frame, width=20, state=state)
        entry.insert(0, default)
        entry.pack(side="left")
        self.fields[key] = entry

    def _add_labeled_combobox(self, parent, key, label_text, values):
        frame = ttk.Frame(parent)
        frame.pack(fill="x", padx=5, pady=2)

        check_var = tk.BooleanVar(value=True)
        chk = ttk.Checkbutton(frame, variable=check_var, bootstyle="purple-round-toggle")
        chk.pack(side="left", padx=(0, 5))
        self.check_vars[key] = check_var

        ttk.Label(frame, text=label_text, width=20).pack(side="left")
        combo = ttk.Combobox(frame, values=values, state="readonly", width=18)
        combo.current(0)
        combo.pack(side="left")
        self.fields[key] = combo

    def _add_labeled_button(self, parent, key, label_text, enabled=True, command=None):
        frame = ttk.Frame(parent)
        frame.pack(fill="x", padx=5, pady=2)

        check_var = tk.BooleanVar(value=True)
        chk = ttk.Checkbutton(frame, variable=check_var, bootstyle="purple-round-toggle")
        chk.pack(side="left", padx=(0, 5))
        self.check_vars[key] = check_var

        btn = ttk.Button(
            frame,
            text=label_text,
            state="normal" if enabled else "disabled",
            command=command  # <-- TU najważniejsze
        )
        btn.pack(side="left", fill="x", expand=True)
        self.fields[key] = btn

    def open_scm_config(self, template, all_templates):

        window = tk.Toplevel(self)
        window.title(f"Template supply manifold Ms-{template}")

        window.geometry("600x520")
        window.resizable(False, False)

        notebook = ttk.Notebook(window)
        notebook.pack(fill="both", expand=True, padx=10, pady=10)

        param_tab = ttk.Frame(notebook)
        notebook.add(param_tab, text="Manifold parameters")

        # === Deployment depth
        depth_frame = ttk.Frame(param_tab)
        depth_frame.pack(anchor="w", padx=10, pady=(5, 0))
        ttk.Label(depth_frame, text="Deployment depth").pack(side="left", padx=(0, 10))
        depth_entry = ttk.Entry(depth_frame, width=10)
        depth_entry.insert(0, "2100.")
        depth_entry.pack(side="left")
        ttk.Label(depth_frame, text="[m]").pack(side="left", padx=(5, 0))

        # === Assisting
        assist_frame = ttk.Frame(param_tab)
        assist_frame.pack(anchor="w", padx=10, pady=(5, 0))
        ttk.Label(assist_frame, text="Assisting").pack(side="left", padx=(0, 15))
        assisting_options = [f"{t} - supply only" for t in all_templates if t != template]
        assisting_options.append("None")
        assist_combo = ttk.Combobox(assist_frame, values=assisting_options, state="readonly", width=20)
        assist_combo.set("None")

        assist_combo.pack(side="left")

        # === Checkboxes z przyciskami (wszystkie aktywne)
        features = [
            "Accumulator",
            "Safety valve",
            "Bladder",
            "Exhaust valve",
            "Receiver",
        ]

        for label in features:
            row = ttk.Frame(param_tab)
            row.pack(anchor="w", padx=10, pady=5)
            cb = ttk.Checkbutton(row, text=label)
            cb.pack(side="left")
            btn = ttk.Button(row, text="...", width=3)
            btn.pack(side="left", padx=5)

        # === Przyciski OK / Apply / Cancel
        btn_frame = ttk.Frame(window)
        btn_frame.pack(fill="x", padx=10, pady=10)

        ttk.Button(btn_frame, text="OK", command=window.destroy).pack(side="right", padx=5)
        ttk.Button(btn_frame, text="Apply", command=lambda: print("Apply clicked")).pack(side="right", padx=5)
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

        def add_param(parent, label, default="", unit="", disabled=False):
            row = ttk.Frame(parent)
            row.pack(anchor="w", padx=10, pady=5)
            ttk.Label(row, text=label, width=35).pack(side="left")
            entry = ttk.Entry(row, width=10, state="disabled" if disabled else "normal")
            entry.insert(0, default)
            entry.pack(side="left")
            if unit:
                ttk.Label(row, text=unit).pack(side="left", padx=5)

        # === Entry fields
        add_param(line_tab, "ID of line", "12.70", "mm")
        add_param(line_tab, "Length of line.", "4175.", "m")
        add_param(line_tab, "Number of plugs", "42")
        add_param(line_tab, "Hydraulic upstream restriction", "30.0", "bar/(l/s)^2")
        add_param(line_tab, "Hydraulic downstream restriction", "30.0", "bar/(l/s)^2")
        add_param(line_tab, "Transition Number lam/turb flow", "2300.")
        add_param(line_tab, "Effective stiffness of fluid and line", "24000", "bar")
        add_param(line_tab, "Linear increase in bulk modulus: Beta + Binc*pr", "0.0", disabled=True)
        add_param(line_tab, "Correction factor for volumetric expansion.", "1.0", disabled=True)

        # === Comboboxes
        def add_combo(parent, label, values, default=None):
            row = ttk.Frame(parent)
            row.pack(anchor="w", padx=10, pady=5)
            ttk.Label(row, text=label, width=35).pack(side="left")
            combo = ttk.Combobox(row, values=values, state="readonly", width=15)
            if default:
                combo.set(default)
            else:
                combo.current(0)
            combo.pack(side="left")

        add_combo(line_tab, "Modelling method", ["Distributed", "Lumped"], "Distributed")
        add_combo(line_tab, "Type", ["Constant", "Variable"], "Constant")
        add_combo(line_tab, "Governing temperature", ["Ambient", "Local"], "Ambient")

        # === Przyciski OK / Apply / Cancel
        btn_frame = ttk.Frame(window)
        btn_frame.pack(fill="x", padx=10, pady=10)

        ttk.Button(btn_frame, text="OK", command=window.destroy).pack(side="right", padx=5)
        ttk.Button(btn_frame, text="Apply", command=lambda: print("Apply clicked")).pack(side="right", padx=5)
        ttk.Button(btn_frame, text="Cancel", command=window.destroy).pack(side="right", padx=5)

    def get_fields(self):
        result = {}
        for key, widget in self.fields.items():
            if not self.check_vars.get(key, tk.BooleanVar(value=True)).get():
                continue
            try:
                result[key] = widget.get()
            except Exception:
                result[key] = ""
        return result

    def toggle_all_checkboxes(self):
        value = self.select_all_var.get()
        for var in self.check_vars.values():
            var.set(value)

