@echo off
title Daniel EDOUN Portfolio - Auto Start
echo ========================================
echo   Daniel EDOUN Portfolio Auto Start
echo ========================================
echo.
echo This will start your portfolio server automatically
echo and keep it running in the background.
echo.
echo Starting server...
echo.

REM Start server in background
start /B npx live-server --port=5173 --open=/index.html --no-browser

echo Server started successfully!
echo.
echo Your portfolio is now running at:
echo http://localhost:5173
echo.
echo The server will keep running until you restart your computer.
echo To stop the server, close this window.
echo.
pause
