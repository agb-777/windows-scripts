@echo off
set "URL=https://www.python.org/ftp/python/3.14.8/python-3.14.8-amd64.exe"
set "INSTALLER=%TEMP%\python314_installer.exe"
curl.exe -L -o "%INSTALLER%" "%URL%"
"%INSTALLER%" /passive InstallAllUsers=1 PrependPath=1 Include_test=0
if exist "%INSTALLER%" del /f /q "%INSTALLER%" >nul 2>&1
set "PATH=C:\Program Files\Python314\;C:\Program Files\Python314\Scripts\;%PATH%"
