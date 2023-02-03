from pathlib import Path

filedata = ""

with open('.lldbinit-Xcode-original', 'r') as file :
    filedata = file.read()
    path = Path().absolute() / "brokenConstraints.txt"
    pathString = '"' + str(path) + '"'
    filedata = filedata.replace('${FILE_PATH}', pathString)

with open('.lldbinit-Xcode', 'w') as file:
  file.write(filedata)