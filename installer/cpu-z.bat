@echo off
set "URL=https://download.cpuid.com/cpu-z/cpu-z_3.01-en.exe"
set "INSTALLER=%TEMP%\cpuz-installer.exe"
curl.exe -L -o "%INSTALLER%" "%URL%"
"%INSTALLER%" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
if exist "%INSTALLER%" del /f /q "%INSTALLER%" >nul 2>&1
