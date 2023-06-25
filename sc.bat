@echo off

setlocal


set "targets=10.0.0.0-254"

set "report_file=%userprofile%\Desktop\N_Report.txt"


nmap -oN %report_file% -p 1-1000 -sS -Pn -O -sV --script="auth,default,discovery,dos,exploit,external,fuzzer,intrusive,malware,safe,version,vuln" --script-args "unsafe=1" %targets% 

echo Scan complete. The report has been saved to %report_file%

endlocal