from pathlib import Path

filedata = ""

with open('lldb-original.cmd', 'r') as file :
    filedata = file.read()
    path = Path().absolute() / "brokenConstraints.txt"
    pathString = '"' + str(path) + '"'
    filedata = filedata.replace('${FILE_PATH}', pathString)

with open('lldb-original.cmd', 'w') as file:
  file.write(filedata)
