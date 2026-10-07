@echo off
set "URL=https://laptop-updates.brave.com/latest/winx64"
set "INSTALLER=%TEMP%\brave-installer.exe"
curl.exe -L -o "%INSTALLER%" "%URL%"
"%INSTALLER%" /silent /install
if exist "%INSTALLER%" del /f /q "%INSTALLER%" >nul 2>&1
