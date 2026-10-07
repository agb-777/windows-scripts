@echo off
set "URL=https://sourceforge.net/projects/crystaldiskinfo/files/9.9.2/CrystalDiskInfo9_9_2.exe/download"
set "INSTALLER=%TEMP%\crystaldiskinfo-installer.exe"
curl.exe -L -o "%INSTALLER%" "%URL%"
"%INSTALLER%" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
if exist "%INSTALLER%" del /f /q "%INSTALLER%" >nul 2>&1
