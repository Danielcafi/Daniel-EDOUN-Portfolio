@echo off
title Daniel EDOUN Portfolio Server
echo ========================================
echo   Daniel EDOUN Portfolio Server
echo ========================================
echo.
echo Starting persistent server on port 5173...
echo This server will keep running until you close this window.
echo.
echo Your portfolio will be available at:
echo http://localhost:5173
echo.
echo Press Ctrl+C to stop the server
echo ========================================
echo.

REM Install live-server if not already installed
npm install live-server --save-dev

REM Start the server with keep-alive
npx live-server --port=5173 --open=/index.html --keep-alive

pause
