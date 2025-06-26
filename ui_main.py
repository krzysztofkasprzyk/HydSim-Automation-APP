import os
import traceback
import tkinter as tk
from tkinter import filedialog, messagebox
import ttkbootstrap as ttk
from ttkbootstrap import Window
from PIL import Image, ImageTk

from gui_components import ParamsTab, HydraulicDistributionTab
from hs_file_handler import parse_hs_file, save_hs_file
from constants import GLOBAL_SECTIONS, HPU_SECTIONS, DUMMY_SECTIONS
from logger_window import LoggerFrame


class HSApp(Window):
    """
    Główna klasa aplikacji HydSIM File Editor.
    Tworzy GUI i obsługuje interakcję użytkownika.
    """

    def __init__(self):
        super().__init__(themename="pulse")
        self.title("HydSIM FILE EDITOR")
        self.geometry("1920x1080")

        # --- Inicjalizacja stanu ---
        self.file_list = []
        self.file_vars = {}
        self.current_file = None

        # --- Ustawienia stylu GUI ---
        self._configure_styles()

        # --- Logo i konsola ---
        self._load_logo()
        self.logger_frame = LoggerFrame(self)
        self.logger_frame.pack(fill="x", padx=400, pady=(10, 0))
        self.logger_frame.activate()

        # --- Główna struktura ---
        main_frame = ttk.Frame(self)
        main_frame.pack(fill="both", expand=True)

        self.build_file_panel(main_frame)
        self.build_notebook(main_frame)
        self.build_buttons()
        self.build_save_options()

    def _configure_styles(self):
        style = self.style
        purple = "#6a0dad"
        purple_hover = "#7d3fdc"
        purple_disabled = "#a89edb"
        info_color = "#2c3e50"  # A dark blue/grey for highlighted text

        style.configure("Logger.TFrame", background="#ffffff")
        style.configure("TButton", background=purple, foreground="white", borderwidth=1)
        style.map("TButton", background=[('active', purple_hover), ('disabled', purple_disabled)],
                  foreground=[('disabled', '#d1c4e9')])
        style.configure("TLabelframe", background="#ffffff", foreground=purple)
        style.configure("TLabelframe.Label", background="#ffffff", foreground=purple)
        style.configure("TFrame", background="#ffffff")
        style.configure("TCheckbutton", background="#ffffff", foreground=purple)
        style.map("TCheckbutton", foreground=[('active', purple), ('selected', purple), ('disabled', purple_disabled)])
        style.configure("TNotebook", background="#ffffff", borderwidth=0)
        style.configure("TNotebook.Tab", background="#ffffff", foreground=purple, padding=[10, 5])
        style.map("TNotebook.Tab",
                  background=[("selected", purple), ("active", purple_hover)],
                  foreground=[("selected", "white")])

        # New styles for highlighting specific parameters
        style.configure("Info.TLabel", foreground=info_color)  # For parameter labels
        style.configure("Primary.TEntry", fieldbackground="#e0eaff")  # A light blue background for entries
        style.configure("Primary.TCombobox", fieldbackground="#e0eaff")  # A light blue background for combobox

    def _load_logo(self):
        try:
            logo_path = "logo.png"
            image = Image.open(logo_path)
            image = image.resize((400, 100), Image.Resampling.LANCZOS)
            self.logo_img = ImageTk.PhotoImage(image)
            logo_label = ttk.Label(self, image=self.logo_img, bootstyle="secondary")
            logo_label.place(relx=1, y=10, anchor="ne")
        except Exception as e:
            print(f"[UI] Błąd ładowania logo: {e}")

    def build_file_panel(self, parent):
        """
        Panel z listą załadowanych plików .hs
        """
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
        """
        Tworzy zakładki edytora parametrów.
        """
        self.notebook = ttk.Notebook(parent)
        self.notebook.pack(side="right", fill="both", expand=True, padx=10, pady=10)

        self.global_tab = ParamsTab(self.notebook, GLOBAL_SECTIONS)
        self.hpu_tab = ParamsTab(self.notebook, HPU_SECTIONS)
        self.hd_tab = HydraulicDistributionTab(self.notebook)

        self.notebook.add(self.global_tab, text="Global")
        self.notebook.add(self.hpu_tab, text="HPU")
        self.notebook.add(self.hd_tab, text="Hydraulic distribution")

        # Dummy zakładki
        for name in ["SCM and XMAS tree", "Valve sequence definitions"]:
            dummy_tab = ParamsTab(self.notebook, DUMMY_SECTIONS)
            self.notebook.add(dummy_tab, text=name)

    def build_buttons(self):
        """
        Przycisk do ładowania i zapisu plików.
        """
        btn_frame = ttk.Frame(self)
        btn_frame.pack(fill="x", pady=10)
        ttk.Button(btn_frame, text="📂 Load HS Files", command=self.load_files).pack(side="left", padx=10)
        ttk.Button(btn_frame, text="💾 Save Selected Files", command=self.save_selected_files).pack(side="left", padx=10)

    def build_save_options(self):
        """
        Pole do ustawiania folderu zapisu i sufiksu nazwy pliku.
        """
        options_frame = ttk.LabelFrame(self, text="Save Options")
        options_frame.pack(fill="x", padx=10, pady=5)

        self.filename_suffix_var = tk.StringVar(value="_updated")  # Default suffix
        self.save_folder_var = tk.StringVar()

        ttk.Label(options_frame, text="Filename suffix:").pack(side="left", padx=(5, 0))
        ttk.Entry(options_frame, textvariable=self.filename_suffix_var, width=20).pack(side="left", padx=5)

        ttk.Label(options_frame, text="Save folder (optional):").pack(side="left", padx=(15, 0))
        ttk.Entry(options_frame, textvariable=self.save_folder_var, width=40).pack(side="left", padx=5)
        ttk.Button(options_frame, text="Browse", command=self.select_save_folder).pack(side="left", padx=5)

    def load_files(self):
        """
        Wczytuje pliki HS i aktualizuje listę oraz GUI.
        """
        files = filedialog.askopenfilenames(title="Select HS files", filetypes=[("HS files", "*.hs")])
        if not files:
            return

        for widget in self.files_inner_frame.winfo_children():
            widget.destroy()

        self.file_list.clear()
        self.file_vars.clear()

        for i, fpath in enumerate(files):
            # Check if the file name already has the suffix. If so, strip it for clearer display.
            base_name = os.path.basename(fpath)
            name_part, ext = os.path.splitext(base_name)
            suffix_val = self.filename_suffix_var.get()
            if suffix_val and name_part.endswith(suffix_val):
                display_name = f"{name_part[:-len(suffix_val)]}{ext}"
            else:
                display_name = base_name

            var = ttk.BooleanVar(value=(i == 0))  # pierwszy plik zaznaczony
            self.file_vars[fpath] = var

            cb = ttk.Checkbutton(
                self.files_inner_frame,
                text=display_name,  # Display the potentially stripped name
                variable=var,
                bootstyle="info-round-toggle",
                # command=lambda p=fpath: self.select_file(p) # Removed direct command
            )
            cb.pack(anchor="w", pady=3, padx=5)
            # Bind to ButtonRelease-1 to ensure checkbutton state is updated before select_file is called
            cb.bind("<ButtonRelease-1>", lambda e, p=fpath: self.select_file(p))
            self.file_list.append(fpath)  # Append to file_list AFTER binding the command

        if self.file_list:
            self.select_file(self.file_list[0])
        else:
            # Clear all tabs if no files are loaded
            self.global_tab.set_fields({})
            self.hpu_tab.set_fields({})
            self.hd_tab.set_fields({})
            for tab_id in self.notebook.tabs():
                tab = self.notebook.nametowidget(tab_id)
                if isinstance(tab, ParamsTab) and tab not in [self.global_tab, self.hpu_tab, self.hd_tab]:
                    tab.set_fields({})

    def select_file(self, filepath):
        """
        Wczytuje dane z wybranego pliku i ustawia pola w GUI.
        """
        # Deselect all other checkboxes, then select the current one
        # This part is handled by the checkbutton's variable management now,
        # but ensure only one is truly "active" for loading.
        for p, var in self.file_vars.items():
            if p != filepath:
                var.set(False)  # Uncheck others
            else:
                var.set(True)  # Ensure this one is checked

        try:
            self.current_file = filepath
            data = parse_hs_file(filepath)

            # Pass the parsed data to all tabs
            self.global_tab.set_fields(data)
            self.hpu_tab.set_fields(data)
            self.hd_tab.set_fields(data)

            # Reset dummy tabs
            for tab_id in self.notebook.tabs():
                tab = self.notebook.nametowidget(tab_id)
                if isinstance(tab, ParamsTab) and tab not in [self.global_tab, self.hpu_tab, self.hd_tab]:
                    tab.set_fields({})

        except Exception as e:
            traceback.print_exc()
            messagebox.showerror("Load Error", f"Błąd podczas ładowania pliku:\n{filepath}\n\n{e}")

    def select_save_folder(self):
        """
        Wybór folderu do zapisu.
        """
        folder = filedialog.askdirectory(title="Select folder to save files")
        if folder:
            self.save_folder_var.set(folder)

    def save_selected_files(self):
        """
        Zapisuje dane do wybranych plików z uwzględnieniem sufiksu i folderu.
        """
        all_data = {}
        # Get data from all active tabs. hd_tab.get_fields() will already contain updated supply_data
        all_data.update(self.global_tab.get_fields())
        all_data.update(self.hpu_tab.get_fields())
        all_data.update(self.hd_tab.get_fields())  # This should now include all umbilical data

        # Get data from dummy tabs
        for i in range(self.notebook.index(self.hd_tab) + 1, self.notebook.index("end")):  # Iterate from after hd_tab
            tab = self.notebook.nametowidget(self.notebook.tabs()[i])
            if isinstance(tab, ParamsTab):  # Ensure it's a ParamsTab
                all_data.update(tab.get_fields())

        saved_files = []
        errors = []

        folder = self.save_folder_var.get().strip()
        suffix = self.filename_suffix_var.get().strip()

        if folder and not os.path.isdir(folder):
            # If the user typed a path that doesn't exist, try to use its directory.
            if os.path.dirname(folder):
                folder = os.path.dirname(folder)
            else:  # User typed a non-existent name like "new_folder" without path
                folder = ""  # Will default to original file's directory if empty

        # Collect files that are checked in the GUI list
        files_to_save = [fpath for fpath, var in self.file_vars.items() if var.get()]

        if not files_to_save:
            messagebox.showwarning("Save results", "Nie wybrano żadnego pliku do zapisu.")
            return

        for fpath in files_to_save:
            try:
                save_dir = folder if folder else os.path.dirname(fpath)
                os.makedirs(save_dir, exist_ok=True)

                # Pass all_data, which contains values from all tabs
                success = save_hs_file(all_data, fpath, save_dir, suffix)

                base_name = os.path.basename(fpath)
                name, ext = os.path.splitext(base_name)
                new_name = f"{name}{suffix}{ext}" if suffix else base_name

                if success:
                    saved_files.append(new_name)
                else:
                    errors.append(f"{base_name}: błąd zapisu")

            except Exception as e:
                traceback.print_exc()
                errors.append(f"{os.path.basename(fpath)}: {e}")

        msg = ""
        if saved_files:
            msg += f"Zapisano pliki: {', '.join(saved_files)}.\n"
        if errors:
            msg += "Błędy:\n" + "\n".join(errors)

        if msg:
            messagebox.showinfo("Save results", msg)
        else:
            messagebox.showwarning("Save results", "Nie wybrano żadnego pliku do zapisu.")