import os
import subprocess
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

# Path to the Markdown file you want to monitor
md_file_path = ".\Derivative.md"

# Path to the notes_converter command
notes_converter_cmd = "notes_converter"

# Path to the PDF viewer command
pdf_viewer_cmd = "start"

# Custom event handler to execute actions when file is modified
class FileModifiedHandler(FileSystemEventHandler):
    def __init__(self, observer):
        self.observer = observer

    def on_modified(self, event):
        if event.src_path == os.path.abspath(md_file_path):
            # Run notes_converter command
            subprocess.run([notes_converter_cmd, md_file_path], check=True)
            
            # Open the generated PDF using the PDF viewer
            subprocess.Popen([pdf_viewer_cmd, ".\Derivative.pdf"])
            
            # Stop monitoring the file
            self.observer.stop()

# Create the observer and attach the event handler
observer = Observer()
event_handler = FileModifiedHandler(observer)
observer.schedule(event_handler, path=os.path.dirname(md_file_path), recursive=False)

# Start monitoring the file
observer.start()

# Open the Markdown file in Neovim
subprocess.Popen(["nvim", md_file_path])

try:
    while observer.is_alive():
        time.sleep(1)
except KeyboardInterrupt:
    observer.stop()

observer.join()

