
@echo off
setlocal
echo [+] Uninstalling Sysmon...
pushd "C:\ProgramData\sysmon\"
sysmon64.exe -accepteula -u
rmdir C:\ProgramData\sysmon
echo [+] Sysmon Successfully Uninstalled!
echo [+] Removing Auto Update Task...
SchTasks /Delete /TN Update_Sysmon_Rules /F
timeout /t 10
exit
