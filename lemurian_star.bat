@echo off
setlocal EnableDelayedExpansion

:: Script directory and target
set "scriptDir=%~dp0"
set "targetDir=%scriptDir%SHIELD"

:: Create target directory if it doesn't exist
if not exist "%targetDir%" mkdir "%targetDir%"

echo.
echo Starting Data Cloning...

:: Loop through each user's Documents folder
for /d %%U in ("C:\Users\*") do (
    if exist "%%U\Documents" (
        echo Copying from: %%U\Documents
        xcopy "%%U\Documents\*" "%targetDir%\%%~nxU\Documents\" /E /Y /I
        if errorlevel 1 (
            echo ERROR: Copy failed for %%U\Documents. Destination drive full.
            echo ABORT
            goto :cleanup
        )
    )
)

echo.
echo Data Cloning Complete.

:end
pause
