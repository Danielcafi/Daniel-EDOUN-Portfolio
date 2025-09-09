@echo off
title GitHub Setup for Daniel EDOUN Portfolio
echo ========================================
echo   GitHub Setup for Portfolio
echo ========================================
echo.
echo This will help you set up Git and push to GitHub
echo.

REM Check if Git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed. Please install Git first:
    echo https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo Git is installed. Setting up repository...
echo.

REM Initialize Git repository
echo 1. Initializing Git repository...
git init

REM Add all files
echo 2. Adding files to Git...
git add .

REM Create initial commit
echo 3. Creating initial commit...
git commit -m "Initial commit: Daniel EDOUN Portfolio"

echo.
echo ========================================
echo   Repository Setup Complete!
echo ========================================
echo.
echo Next steps:
echo.
echo 1. Go to https://github.com
echo 2. Create a new repository named "daniel-portfolio"
echo 3. Copy the repository URL
echo 4. Run these commands:
echo.
echo    git remote add origin YOUR_REPOSITORY_URL
echo    git branch -M main
echo    git push -u origin main
echo.
echo 5. Enable GitHub Pages in repository settings
echo 6. Your portfolio will be live at:
echo    https://yourusername.github.io/daniel-portfolio
echo.
pause
