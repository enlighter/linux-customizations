#!/bin/python3

from io import StringIO
import os
import sys

old_stdout = sys.stdout
sys.stdout = my_stdout = StringIO()
os.system("git config --list")
gitConfig = my_stdout.getvalue()
sys.stdout = old_stdout
print(type(gitConfig))
print("Screen check")