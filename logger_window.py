# logger_window.py

import tkinter as tk
from tkinter import scrolledtext
import ttkbootstrap as ttk
import sys

class LoggerFrame(ttk.Frame):
    """
    Komponent GUI do wyświetlania logów aplikacji (przechwytuje stdout/stderr).
    """

    def __init__(self, parent):
        super().__init__(parent)
        self.configure(style="Logger.TFrame")

        self.text_widget = scrolledtext.ScrolledText(
            self,
            height=8,
            bg="#ffffff",
            fg="#000000",
            relief="flat",
            font=("Courier", 10, "bold")
        )
        self.text_widget.pack(fill="both", expand=True)

        self.console_logger = ConsoleLogger(self.text_widget)

    def activate(self):
        """
        Przechwytuje sys.stdout i sys.stderr, kierując je do widgetu tekstowego.
        """
        sys.stdout = self.console_logger
        sys.stderr = self.console_logger


class ConsoleLogger:
    """
    Pomocnicza klasa – przekierowuje printy do widgetu tekstowego.
    """

    def __init__(self, widget):
        self.widget = widget

    def write(self, message):
        self.widget.insert("end", message)
        self.widget.see("end")

    def flush(self):
        pass  # wymagane przez sys.stdout, ale niepotrzebne tu
