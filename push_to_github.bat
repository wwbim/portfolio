@echo off
title Push Portfolio to GitHub
echo ========================================================
echo   Pushing WANG Wei Portfolio to GitHub...
echo   Target: https://github.com/wwbim/portfolio.git
echo ========================================================
echo.

cd /d "%~dp0"

git config --global --add safe.directory "%CD%"

REM Force push local commits to remote to overwrite GitHub default initial commit
git push -u origin main --force

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo   [SUCCESS] Successfully pushed to GitHub!
    echo.
    echo   Next Step: Enable GitHub Pages in your repo:
    echo   1. Go to: https://github.com/wwbim/portfolio/settings/pages
    echo   2. Under Branch, select main / (root), then click Save
    echo   3. Your site will be live at:
    echo      https://wwbim.github.io/portfolio/
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo   [NOTICE] If GitHub login popup appeared, please complete
    echo   authorization in your browser to finish the push.
    echo ========================================================
)

echo.
pause
