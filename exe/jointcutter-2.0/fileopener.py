from tkinter import *
from tkinter.filedialog import askopenfilename
import time

Tk().withdraw() # we don't want a full GUI, so keep the root window from appearing
filename = askopenfilename() # show an "Open" dialog box and return the path to the selected file
print(filename)
time.sleep(1)
