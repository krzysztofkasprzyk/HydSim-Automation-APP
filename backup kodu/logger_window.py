import tkinter as tk
from tkinter import scrolledtext
import ttkbootstrap as ttk
import sys

class LoggerFrame(ttk.Frame):
    def __init__(self, parent):
        super().__init__(parent)

        # Styl ramki (np. białe tło)
        self.configure(style="Logger.TFrame")

        # Tworzymy widżet konsoli
        self.text_widget = scrolledtext.ScrolledText(
            self,
            height=8,
            bg="#ffffff",  # białe tło
            fg="#000000",  # czarny tekst
            relief="flat",
            font=("Courier", 10, "bold")  # pogrubiony font
        )

        self.text_widget.pack(fill="both", expand=True)

        # Utwórz obiekt, który będzie przechwytywał stdout
        self.console_logger = ConsoleLogger(self.text_widget)

    def activate(self):
        sys.stdout = self.console_logger
        sys.stderr = self.console_logger

class ConsoleLogger:
    def __init__(self, widget):
        self.widget = widget

    def write(self, message):
        self.widget.insert("end", message)
        self.widget.see("end")  # przewiń do końca

    def flush(self):
        pass  # potrzebne przy przekierowywaniu sys.stdout/sys.stderr
