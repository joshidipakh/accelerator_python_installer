#!python3

#from installScripts.readExcelFile import readExcelFileClass
from installScripts.readJsonFile import readJsonFileClass
from Configuration import Config
from Utilities.platformCheck import IdentifyOS
from installScripts.installOnLinux import InstallOnLinux

import subprocess, sys

def main():
    # test = readExcelFileClass(Config.List)
    # test.readExcel()
    test = readJsonFileClass()
    soft_list = test.readJson()
    #print (soft_list)
    OSCheck = IdentifyOS()
    for soft_details in soft_list:
        soft_dict = soft_list[soft_details]
        if OSCheck.OSType() == "Linux":
            Lin = InstallOnLinux()
            Lin.install_function()
        elif OSCheck.OSType() == "win32":
            p = subprocess.Popen(["powershell.exe", './powershellInstallScript.ps1 ' + soft_dict['path'] + ' " ' + soft_dict['arguments'] + ' " ', "-ExecutionPolicy","Unrestricted"], stdout=sys.stdout)
            p.communicate()
            pass

if __name__== "__main__":
    main()

