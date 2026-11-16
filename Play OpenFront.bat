
@echo off
title OpenFront Offline

cd /d "%~dp0OpenFrontIO"

set "PATH=%~dp0node;%PATH%"

echo Starting OpenFront...
echo Please wait while the game starts.

start "OpenFront Server" cmd /k "cd /d ""%~dp0OpenFrontIO"" && npm.cmd run dev"

timeout /t 10 /nobreak >nul

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" http://localhost:5173
) else (
    start "" http://localhost:5173
)
