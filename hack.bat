@echo off

REM Vmware: delete snapshot, create a new snapshot, run the VM
"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe" deleteSnapshot "V:\vmware\machines\Kali-PreOSCP\Kali-PreOSCP.vmx" temp
"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe" snapshot "V:\vmware\machines\Kali-PreOSCP\Kali-PreOSCP.vmx" temp
"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe" start "V:\vmware\machines\Kali-PreOSCP\Kali-PreOSCP.vmx"


REM Firefox, Chrome start
START "" "C:\Program Files\Google\Chrome\Application\chrome.exe"

START "" "C:\Program Files\Mozilla Firefox\firefox.exe"


REM Cherrytree start 
START "" "C:\Program Files\CherryTree\mingw64\bin\cherrytree.exe" "C:\Users\kevin\Documents\Personal\Notes\pentest\pentest-notes-template.ctb"


REM PuTTY start
START "" "C:\Program Files\PuTTY\putty.exe" -ssh root@192.168.1.112 22
