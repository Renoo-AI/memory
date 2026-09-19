@echo off
title SchoolMemory Launcher
echo ===================================================
echo   SchoolMemory Web Server
echo ===================================================
echo Opening http://localhost:8000 in your browser...
echo (Web Speech API is 100%% enabled on localhost)
echo ===================================================

start "" "http://localhost:8000"

python -m http.server 8000 2>NUL
if %errorlevel% neq 0 (
  npx serve -p 8000 .
)
pause
