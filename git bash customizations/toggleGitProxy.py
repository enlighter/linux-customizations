#!/bin/python3

# from io import StringIO
import os
# import sys

# old_stdout = sys.stdout
# sys.stdout = my_stdout = StringIO()
# os.system("git config --list")
# gitConfig = my_stdout.getvalue()
# sys.stdout = old_stdout
# print(type(gitConfig))
# print("Screen check")

# import sys
# from io import TextIOWrapper, BytesIO

# # setup the environment
# old_stdout = sys.stdout
# sys.stdout = TextIOWrapper(BytesIO(), sys.stdout.encoding)

# # do something that writes to stdout or stdout.buffer
# os.system("git config --list")

# # get output
# sys.stdout.seek(0)      # jump to the start
# out = sys.stdout.read() # read output

# # restore stdout
# sys.stdout.close()
# sys.stdout = old_stdout
# print(out)

import subprocess

# proc = subprocess.Popen(["cat", "/etc/services"], stdout=subprocess.PIPE, shell=True)
gitConfig = subprocess.check_output("git config --list", shell=True).decode()
# (out, err) = proc.communicate()
if 'http.proxy' in gitConfig:
	# proxy is set, have to unset
	os.system("git config --global --unset http.proxy")
	os.system("git config --global --unset https.proxy")
	os.system("git config --list")
else:
	os.system("git config --global http.proxy http://10.3.100.207:8080")
	os.system("git config --global https.proxy http://10.3.100.207:8080")
	os.system("git config --list")