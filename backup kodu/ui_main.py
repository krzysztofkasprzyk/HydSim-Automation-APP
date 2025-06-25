import os
import traceback
import tkinter as tk
from tkinter import filedialog, messagebox
import ttkbootstrap as ttk
from ttkbootstrap import Window
from PIL import Image, ImageTk

from gui_components import ParamsTab
from hs_file_handler import parse_hs_file, save_hs_file
from constants import GLOBAL_SECTIONS, HPU_SECTIONS, DUMMY_SECTIONS
from logger_window import LoggerFrame
from gui_components import HydraulicDistributionTab

class HSApp(Window):
    def __init__(self):
        super().__init__(themename="pulse")

        # --- Ustawienia kolorystyczne ---
        self.configure(bg="#b0b0b0")  # szare tło całego okna

        style = self.style
        style.configure("Logger.TFrame", background="#ffffff")
        # Fioletowy kolor
        purple = "#6a0dad"
        purple_hover = "#7d3fdc"
        purple_disabled = "#a89edb"
        # użyj na przykład
        bg_gray = "#ffffff"
        # Załaduj obraz logo
        # Załaduj logo
        logo_path = "logo.png"
        image = Image.open(logo_path)
        image = image.resize((400, 100), Image.Resampling.LANCZOS)
        self.logo_img = ImageTk.PhotoImage(image)

        # Utwórz label z logo
        logo_label = ttk.Label(self, image=self.logo_img, style="")  # bez tła jeśli chcesz

        # Ustaw logo w prawym górnym rogu okna (lub innym miejscu) przez place()
        logo_label.place(relx=10.0, anchor="ne", x=500, y=100)


        # Stwórz Label z obrazkiem i umieść go w prawym górnym rogu
        if self.logo_img:
            logo_label = ttk.Label(self, image=self.logo_img, bootstyle="secondary")
            logo_label.place(relx=1, y=10, anchor="ne")  # relx=1.0 -> prawa krawędź, y=10 od góry

        # Przyciski - fioletowe tło, biała czcionka
        style.configure("TButton",
                        background=purple,
                        foreground="white",
                        borderwidth=1,
                        focusthickness=3,
                        focuscolor=purple_hover)
        style.map("TButton",
                  background=[('active', purple_hover), ('disabled', purple_disabled)],
                  foreground=[('disabled', '#d1c4e9')])

        # LabelFrame tło i napis fioletowy
        style.configure("TLabelframe", background=bg_gray, foreground=purple)
        style.configure("TLabelframe.Label", background=bg_gray, foreground=purple)

        # Frame tło
        style.configure("TFrame", background="#ffffff")

        # Checkbutton - tło szare, tekst fioletowy
        style.configure("TCheckbutton", background="#ffffff", foreground=purple)
        style.map("TCheckbutton",
                  foreground=[('active', purple), ('selected', purple), ('disabled', purple_disabled)])

        # Notebook - tło i taby fioletowe
        style.configure("TNotebook", background="#ffffff", borderwidth=0)
        style.configure("TNotebook.Tab", background="#ffffff", foreground=purple, padding=[10, 5])
        style.map("TNotebook.Tab",
                  background=[("selected", purple), ("active", purple_hover)],
                  foreground=[("selected", "white")])

        self.title("HydSIM FILE EDITOR")
        self.geometry("1920x1080")

        self.file_list = []
        self.file_vars = {}
        self.current_file = None

        self.logger_frame = LoggerFrame(self)
        self.logger_frame.pack(fill="x", padx=400, pady=(10, 0))
        self.logger_frame.activate()

        main_frame = ttk.Frame(self)
        main_frame.pack(fill="both", expand=True)

        self.build_file_panel(main_frame)
        self.build_notebook(main_frame)
        self.build_buttons()
        self.build_save_options()

    def build_file_panel(self, parent):
        files_frame = ttk.LabelFrame(parent, text="Loaded HS Files")
        files_frame.pack(side="left", fill="y", padx=10, pady=10)

        self.files_canvas = ttk.Canvas(files_frame)
        self.files_canvas.pack(side="left", fill="both", expand=True)

        self.files_scrollbar = ttk.Scrollbar(files_frame, orient="vertical", command=self.files_canvas.yview)
        self.files_scrollbar.pack(side="right", fill="y")
        self.files_canvas.configure(yscrollcommand=self.files_scrollbar.set)

        self.files_inner_frame = ttk.Frame(self.files_canvas)
        self.files_canvas.create_window((0, 0), window=self.files_inner_frame, anchor="nw")
        self.files_inner_frame.bind("<Configure>", lambda e: self.files_canvas.configure(
            scrollregion=self.files_canvas.bbox("all")))

    def build_notebook(self, parent):
        self.notebook = ttk.Notebook(parent)
        self.notebook.pack(side="right", fill="both", expand=True, padx=10, pady=10)

        self.global_tab = ParamsTab(self.notebook, GLOBAL_SECTIONS)
        self.notebook.add(self.global_tab, text="Global")

        self.hpu_tab = ParamsTab(self.notebook, HPU_SECTIONS)
        self.notebook.add(self.hpu_tab, text="HPU")



        self.hd_tab = HydraulicDistributionTab(self.notebook)
        self.notebook.add(self.hd_tab, text="Hydraulic distribution")

        # Dummy tabs
        for name in ["SCM and XMAS tree", "Valve sequence definitions"]:
            tab = ParamsTab(self.notebook, DUMMY_SECTIONS)
            self.notebook.add(tab, text=name)

    def build_buttons(self):
        btn_frame = ttk.Frame(self)
        btn_frame.pack(fill="x", pady=10)
        ttk.Button(btn_frame, text="📂 Load HS Files", command=self.load_files).pack(side="left", padx=10)
        ttk.Button(btn_frame, text="💾 Save Selected Files", command=self.save_selected_files).pack(side="left", padx=10)

    def build_save_options(self):
        options_frame = ttk.LabelFrame(self, text="Save Options")
        options_frame.pack(fill="x", padx=10, pady=5)

        ttk.Label(options_frame, text="Filename suffix:").pack(side="left", padx=(5, 0))
        self.filename_suffix_var = tk.StringVar()
        ttk.Entry(options_frame, textvariable=self.filename_suffix_var, width=20).pack(side="left", padx=5)

        ttk.Label(options_frame, text="Save folder (optional):").pack(side="left", padx=(15, 0))
        self.save_folder_var = tk.StringVar()
        ttk.Entry(options_frame, textvariable=self.save_folder_var, width=40).pack(side="left", padx=5)
        ttk.Button(options_frame, text="Browse", command=self.select_save_folder).pack(side="left", padx=5)

    def load_files(self):
        files = filedialog.askopenfilenames(title="Select HS files", filetypes=[("HS files", "*.hs")])
        if not files:
            return

        for widget in self.files_inner_frame.winfo_children():
            widget.destroy()

        self.file_list.clear()
        self.file_vars.clear()

        for i, fpath in enumerate(files):
            var = ttk.BooleanVar(value=(i == 0))
            self.file_vars[fpath] = var
            self.file_list.append(fpath)

            cb = ttk.Checkbutton(
                self.files_inner_frame,
                text=os.path.basename(fpath),
                variable=var,
                bootstyle="info-round-toggle",
                command=lambda p=fpath: self.select_file(p)
            )
            cb.pack(anchor="w", pady=3, padx=5)
            cb.bind("<Button-1>", lambda e, p=fpath: self.select_file(p))

        if self.file_list:
            self.select_file(self.file_list[0])

    def select_file(self, filepath):
        try:
            self.current_file = filepath
            data = parse_hs_file(filepath)

            self.global_tab.set_fields(data)
            self.hpu_tab.set_fields(data)
            self.hd_tab.set_fields(data)

            # Reset tylko DUMMY zakładek
            for tab_id in self.notebook.tabs():
                tab = self.notebook.nametowidget(tab_id)
                if isinstance(tab, ParamsTab) and tab not in [self.global_tab, self.hpu_tab]:
                    tab.set_fields({})


        except Exception as e:
            traceback.print_exc()
            messagebox.showerror("Load Error", f"Błąd podczas ładowania pliku:\n{filepath}\n\n{e}")

    def select_save_folder(self):
        folder = filedialog.askdirectory(title="Select folder to save files")
        if folder:
            self.save_folder_var.set(folder)

    def save_selected_files(self):
        all_data = {}
        all_data.update(self.global_tab.get_fields())
        all_data.update(self.hpu_tab.get_fields())
        all_data.update(self.hd_tab.get_fields())

        for i in range(2, self.notebook.index("end")):
            tab = self.notebook.nametowidget(self.notebook.tabs()[i])
            all_data.update(tab.get_fields())

        saved_files = []
        errors = []
        folder = self.save_folder_var.get().strip()
        suffix = self.filename_suffix_var.get().strip()

        if folder and not os.path.isdir(folder):
            folder = os.path.dirname(folder)

        for fpath in self.file_list:
            if self.file_vars[fpath].get():
                try:
                    save_dir = folder if folder else os.path.dirname(fpath)
                    os.makedirs(save_dir, exist_ok=True)
                    success = save_hs_file(all_data, fpath, save_dir, suffix)

                    if success:
                        base_name = os.path.basename(fpath)
                        name, ext = os.path.splitext(base_name)
                        new_name = f"{name}{suffix}{ext}" if suffix else base_name
                        saved_files.append(new_name)
                    else:
                        errors.append(f"{os.path.basename(fpath)}: błąd zapisu")

                except Exception as e:
                    traceback.print_exc()
                    errors.append(f"{os.path.basename(fpath)}: {e}")

        msg = ""
        if saved_files:
            msg += f"Zapisano pliki: {', '.join(saved_files)}.\n"
        if errors:
            msg += f"Błędy:\n" + "\n".join(errors)

        if msg:
            messagebox.showinfo("Save results", msg)
        else:
            messagebox.showwarning("Save results", "Nie wybrano żadnego pliku do zapisu.")
