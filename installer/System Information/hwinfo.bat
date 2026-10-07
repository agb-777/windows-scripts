@echo off
set "URL=https://www.hwinfo.com/files/hwi64_854.exe"
set "INSTALLER=%TEMP%\hwinfo-installer.exe"
curl.exe -L -o "%INSTALLER%" "%URL%"
"%INSTALLER%" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
if exist "%INSTALLER%" del /f /q "%INSTALLER%" >nul 2>&1
