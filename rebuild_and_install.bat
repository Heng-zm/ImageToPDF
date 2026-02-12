@echo off
echo ========================================
echo Rebuilding Image To PDF Converter
echo ========================================
echo.

REM Step 1: Clean and rebuild with PyInstaller
echo [1/4] Cleaning previous build...
if exist "build" rmdir /s /q "build"
if exist "dist\ImageToPDFConverter" rmdir /s /q "dist\ImageToPDFConverter"

echo [2/4] Rebuilding executable...
pyinstaller ImageToPDFConverter.spec --clean
if errorlevel 1 (
    echo ERROR: PyInstaller build failed!
    pause
    exit /b 1
)

echo [3/4] Building installer...
"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" "installer\ImageToPDF.iss"
if errorlevel 1 (
    echo ERROR: Installer build failed!
    pause
    exit /b 1
)

echo [4/4] Cleaning Windows icon cache...
taskkill /f /im explorer.exe >nul 2>&1
del /f /q "%localappdata%\IconCache.db" >nul 2>&1
start explorer.exe

echo.
echo ========================================
echo BUILD COMPLETE!
echo ========================================
echo Installer location:
echo installer\output\ImageToPDFConverter-1.0.5-Setup.exe
echo.
echo IMPORTANT: 
echo 1. Uninstall the old version first
echo 2. Then run the new installer
echo 3. Icon cache has been cleared
echo ========================================
pause
