@echo off
set "URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/Git-2.48.1-64-bit.exe"
set "INSTALLER=%TEMP%\git_installer.exe"
curl.exe -L -o "%INSTALLER%" "%URL%"
"%INSTALLER%" /VERYSILENT /NORESTART /NOCANCEL /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS
if exist "%INSTALLER%" del /f /q "%INSTALLER%" >nul 2>&1
set "PATH=C:\Program Files\Git\cmd\;%PATH%"
