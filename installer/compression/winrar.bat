@echo off
set "URL=https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-723.exe"
set "INSTALLER=%TEMP%\winrar-installer.exe"
curl.exe -L -o "%INSTALLER%" "%URL%"
"%INSTALLER%" /S
if exist "%INSTALLER%" del /f /q "%INSTALLER%" >nul 2>&1
