import tkinter as tk
from tkinter import ttk

class GlobalTab(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)

        self.fields = {}
        self.checks = {}

        self.param_keys = [
            "Subsea Temperature",
            "Fluid bulk modules",
            "Fixed viscosity value",
            "Density of fluid",
            "Fluid Type"
        ]

        fluid_options = [
            "Constant-Viscosity",
            "Aqualink-HT 180SC",
            "Castrol-Brayco-LV3",
            "Castrol...yco-SV/B",
            "Castrol-HC10",
            "Castrol-HC20",
            "Castrol...saqua-HT",
            "ISO-VG10",
            "ISO-VG15",
            "ISO-VG32",
            "ISO-VG46",
            "ISO-VG68",
            "MBO-BTC-491",
            "MBO-HW-443",
            "MBO-HW-460R",
            "MBO-HW-510",
            "MBO-HW-525",
            "MBO-HW-540",
            "MBO-HW-560",
            "Niche-Pelagic-100",
            "Statoil-Mereta-15",
            "Tap_water",
            "Castrol-EE2"
        ]

        for i, key in enumerate(self.param_keys):
            self.fields[key] = tk.StringVar()
            self.checks[key] = tk.BooleanVar(value=True)

            ttk.Checkbutton(self, variable=self.checks[key]).grid(row=i, column=0, padx=2)
            ttk.Label(self, text=key).grid(row=i, column=1, sticky="w", padx=2, pady=5)

            if key == "Fluid Type":
                self.fluid_combo = ttk.Combobox(self, values=fluid_options,
                                                textvariable=self.fields[key], state="readonly")
                self.fluid_combo.grid(row=i, column=2, padx=5)
                self.fluid_combo.current(0)
            else:
                ttk.Entry(self, textvariable=self.fields[key]).grid(row=i, column=2, padx=5)

    def set_fields(self, data):
        for key in self.param_keys:
            value = data.get(key, "")
            self.fields[key].set(value)
            if key == "Fluid Type":
                if value in self.fluid_combo["values"]:
                    self.fluid_combo.set(value)
                else:
                    self.fluid_combo.current(0)

    def get_fields(self):
        result = {}
        for key in self.param_keys:
            if self.checks[key].get():
                result[key] = self.fields[key].get()
        return result
