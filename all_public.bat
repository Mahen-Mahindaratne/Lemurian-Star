@echo off
setlocal EnableDelayedExpansion

echo.
echo ========================================================
echo WARNING: PUBLIC DATA CLONING OPERATION
echo ========================================================
echo.
echo This script will copy data from all Public and Shared
echo folders to the local SHIELD directory.
echo.
echo Target locations include:
echo - C:\Users\Public\* 
echo - C:\Shared
echo - C:\Public  
echo - C:\Common
echo.
echo IMPORTANT: Due to technical limitations, comprehensive
echo capacity checking is not implemented. If the destination
echo drive runs out of space during operation, the script
echo will ABORT automatically.
echo.
echo Press any key to continue or Ctrl+C to abort...
pause >nul
echo.

:: Script directory and target
set "scriptDir=%~dp0"
set "targetDir=%scriptDir%SHIELD"

:: Create target directory if it doesn't exist
if not exist "%targetDir%" mkdir "%targetDir%"

echo Starting Data Cloning...

:: Function to copy files with error handling
:CopyFiles
set "source=%~1"
set "dest=%~2"
set "label=%~3"

echo Copying %label%: %source%
xcopy "%source%\*" "%dest%\" /E /Y /I
if errorlevel 1 (
    echo ERROR: Copy failed for %label%. Destination drive full.
    echo ABORT
    goto :cleanup
)
goto :EOF

:: Copy Public folders
set "publicRoot=C:\Users\Public"
if exist "%publicRoot%" (
    for /d %%P in ("%publicRoot%\*") do (
        call :CopyFiles "%%P" "%targetDir%\Public\%%~nxP" "Public Folder"
    )
    
    :: Also copy any files directly in Public root
    if exist "%publicRoot%\*" (
        call :CopyFiles "%publicRoot%" "%targetDir%\Public\Root" "Public Root"
    )
)

:: Additional common public/shared locations
set "sharedLocations=C:\Shared C:\Public C:\Common"
for %%L in (%sharedLocations%) do (
    if exist "%%L" (
        call :CopyFiles "%%L" "%targetDir%\Shared\%%~nxL" "Shared Location"
    )
)

echo.
echo Data Cloning Complete.

:end
pause
exit /b

:cleanup
echo Performing cleanup...
:: Add any cleanup operations here if needed
pause
exit /b 1