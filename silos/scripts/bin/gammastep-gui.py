#!/usr/bin/env python3
import gi
import subprocess
import threading

gi.require_version("Gtk", "3.0")
from gi.repository import Gtk, GLib

class GammaStepUI(Gtk.Window):
    def __init__(self):
        super().__init__(title="gammastep UI")
        
        self.set_border_width(10)
        self.set_default_size(300, 250)

        self.command_process = None  # To track the subprocess
        self.is_running = False
        self.debounce_timer = None

        # Create a vertical box layout
        vbox = Gtk.Box(orientation=Gtk.Orientation.VERTICAL, spacing=10)
        self.add(vbox)

        self.slider1 = Gtk.Scale.new_with_range(Gtk.Orientation.HORIZONTAL, 2000, 6000, 1)
        self.slider1.set_value(4000)
        vbox.pack_start(Gtk.Label(label="Color Temp (2000-6000)"), False, False, 0)
        vbox.pack_start(self.slider1, False, False, 0)
        self.slider1.connect("value-changed", self.on_slider_changed)

        self.slider2 = Gtk.Scale.new_with_range(Gtk.Orientation.HORIZONTAL, 10, 100, 5)
        self.slider2.set_value(50)
        vbox.pack_start(Gtk.Label(label="Brightness (10-100%)"), False, False, 0)
        vbox.pack_start(self.slider2, False, False, 0)
        self.slider2.connect("value-changed", self.on_slider_changed)

        self.text_view = Gtk.TextView()
        self.text_view.set_editable(False)
        vbox.pack_start(self.text_view, True, True, 0)
        self.buffer = self.text_view.get_buffer()

    def rerun(self):
        """Terminate any ongoing command and start a new one after debounce delay."""
        self.debounce_timer = None

        if self.command_process:
            print(f"Terminating process PID={self.command_process.pid}")
            self.command_process.terminate()
            try:
                self.command_process.wait(timeout=3)
            except subprocess.TimeoutExpired:
                print("Force killing the process.")
                self.command_process.kill()

        self.is_running = False
        self.command_process = None

        # Restart the process
        self.start_command()

    def on_slider_changed(self, slider):
        if self.debounce_timer:
            GLib.source_remove(self.debounce_timer)
        self.debounce_timer = GLib.timeout_add(1000, self.rerun)

    def start_command(self):
        """Start the shell command using slider values."""
        value1 = int(self.slider1.get_value())
        value2 = int(self.slider2.get_value()) / 100
        command = f"gammastep -O {value1} -b {value2}"
        print(f"Starting: {command}")
        threading.Thread(target=self.run_command, args=(command,), daemon=True).start()

    def run_command(self, command):
        try:
            self.command_process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            for line in iter(self.command_process.stdout.readline, b''):
                self.append_text_view(line.decode().strip())
        except Exception as e:
            self.append_text_view(f"Error: {str(e)}")
        finally:
            self.reset_state()

    def reset_state(self):
        self.is_running = False
        self.command_process = None

    def append_text_view(self, text):
        GLib.idle_add(self.buffer.insert_at_cursor, text + "\n")


def main():
    app = GammaStepUI()
    app.connect("destroy", Gtk.main_quit)
    app.show_all()
    Gtk.main()


if __name__ == "__main__":
    main()
