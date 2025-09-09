@echo off
title Daniel EDOUN Portfolio - Cloud Deployment
echo ========================================
echo   Daniel EDOUN Portfolio Deployment
echo ========================================
echo.
echo This script will help you deploy your portfolio to the cloud.
echo.
echo Choose your deployment method:
echo.
echo 1. Netlify (Easiest - Drag & Drop)
echo 2. Vercel (Developer-friendly)
echo 3. GitHub Pages (Free with GitHub)
echo 4. Create deployment package
echo.
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto vercel
if "%choice%"=="3" goto github
if "%choice%"=="4" goto package
goto invalid

:netlify
echo.
echo ========================================
echo   NETLIFY DEPLOYMENT
echo ========================================
echo.
echo 1. Go to: https://netlify.com
echo 2. Sign up for free account
echo 3. Click "Add new site" ^> "Deploy manually"
echo 4. Drag and drop the portfolio folder
echo 5. Wait for deployment (2-3 minutes)
echo 6. Get your URL: https://your-site-name.netlify.app
echo.
echo Your portfolio will be live and accessible from anywhere!
echo.
pause
goto end

:vercel
echo.
echo ========================================
echo   VERCEL DEPLOYMENT
echo ========================================
echo.
echo Installing Vercel CLI...
npm install -g vercel
echo.
echo Deploying to Vercel...
vercel
echo.
echo Your portfolio will be available at: https://daniel-portfolio.vercel.app
echo.
pause
goto end

:github
echo.
echo ========================================
echo   GITHUB PAGES DEPLOYMENT
echo ========================================
echo.
echo 1. Go to: https://github.com
echo 2. Create new repository: daniel-portfolio
echo 3. Upload all portfolio files
echo 4. Go to Settings ^> Pages
echo 5. Source: Deploy from branch ^> main
echo 6. Get URL: https://yourusername.github.io/daniel-portfolio
echo.
pause
goto end

:package
echo.
echo ========================================
echo   CREATING DEPLOYMENT PACKAGE
echo ========================================
echo.
echo Creating deployment-ready files...
echo.

REM Create a clean deployment folder
if exist "deploy" rmdir /s /q "deploy"
mkdir "deploy"

REM Copy essential files
copy "index.html" "deploy\"
copy "styles.css" "deploy\"
copy "script.js" "deploy\"
copy "profile.png" "deploy\"

REM Create a simple README for deployment
echo # Daniel EDOUN Portfolio > "deploy\README.md"
echo. >> "deploy\README.md"
echo Professional portfolio website for Daniel EDOUN. >> "deploy\README.md"
echo. >> "deploy\README.md"
echo ## Features >> "deploy\README.md"
echo - Responsive design >> "deploy\README.md"
echo - Language switcher (EN/FR) >> "deploy\README.md"
echo - Modern animations >> "deploy\README.md"
echo - Professional projects showcase >> "deploy\README.md"

echo.
echo ✅ Deployment package created in 'deploy' folder!
echo.
echo You can now:
echo 1. Zip the 'deploy' folder
echo 2. Upload to Netlify, Vercel, or GitHub Pages
echo 3. Your portfolio will be live!
echo.
pause
goto end

:invalid
echo.
echo Invalid choice. Please run the script again.
echo.
pause
goto end

:end
echo.
echo ========================================
echo   DEPLOYMENT COMPLETE
echo ========================================
echo.
echo Your portfolio is now ready for cloud hosting!
echo.
echo Next steps:
echo 1. Choose a hosting platform
echo 2. Upload your files
echo 3. Share your professional URL
echo.
echo Good luck with your portfolio! 🚀
echo.
pause
