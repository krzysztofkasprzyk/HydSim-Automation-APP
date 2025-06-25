import tkinter as tk
from tkinter import ttk

class HPUTab(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)

        self.param_keys = [
            "Pstart",
            "Pstop",
            "Pdepl",
            "Rhp_a",
            "Rha_r",
            "Pset",
            "Pdrop",
            "Qref",
            "Tamb",
            "Height",
            "PrRet",
            "PrTreshold",
            "QTreshold",
            "Tau",
            "Prepr",
            "Prevol",
            "Pretmpr",
            "Dia",
            "Len",
            "Rh",
        ]

        self.units = {
            "Pstart": "bar",
            "Pstop": "bar",
            "Pdepl": "Vs",
            "Rhp_a": "bar/(Vs)^2",
            "Rha_r": "bar/(Vs)^2",
            "Pset": "bar",
            "Pdrop": "bar",
            "Qref": "Vs",
            "Tamb": "°C",
            "Height": "m",
            "PrRet": "bar",
            "PrTreshold": "bar",
            "QTreshold": "Vs",
            "Tau": "s",
            "Prepr": "bar",
            "Prevol": "l",
            "Pretmpr": "°C",
            "Dia": "mm",
            "Len": "m",
            "Rh": "bar/(Vs)^2",
        }

        self.fields = {}
        self.checks = {}

        for i, key in enumerate(self.param_keys):
            self.checks[key] = tk.BooleanVar(value=True)
            self.fields[key] = tk.StringVar()

            ttk.Checkbutton(self, variable=self.checks[key]).grid(row=i, column=0, padx=2)
            ttk.Label(self, text=key).grid(row=i, column=1, sticky="w", padx=2, pady=5)
            ttk.Entry(self, textvariable=self.fields[key], width=20).grid(row=i, column=2, padx=5)
            ttk.Label(self, text=self.units.get(key, "")).grid(row=i, column=3, sticky="w")

    def set_fields(self, data):
        for key in self.param_keys:
            val = data.get(key, "")
            self.fields[key].set(val)

    def get_fields(self):
        result = {}
        for key in self.param_keys:
            if self.checks[key].get():
                result[key] = self.fields[key].get()
        return result
