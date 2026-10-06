@echo off
cd /d "%~dp0"
set PORT=8088
where py >nul 2>nul
if %errorlevel%==0 (
  start "Portfolio V5" http://127.0.0.1:%PORT%
  py -m http.server %PORT%
  goto :eof
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "Portfolio V5" http://127.0.0.1:%PORT%
  python -m http.server %PORT%
  goto :eof
)
start "Portfolio V5" index.html
pause
