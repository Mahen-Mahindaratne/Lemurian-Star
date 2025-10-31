@echo off
setlocal EnableDelayedExpansion

echo.
echo ========================================================
echo WARNING: DATA CLONING OPERATION
echo ========================================================
echo.
echo This script will copy data from ALL detected drives
echo (A: through Z:) to the local SHIELD directory.
echo.
echo IMPORTANT: Due to technical limitations, comprehensive
echo capacity checking is not implemented. If the destination
echo drive runs out of space during operation, the script
echo will ABORT automatically.
echo.
echo This operation may take significant time and storage
echo capacity depending on the amount of data on your drives.
echo.
pause
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

:: Get all drive letters
echo Discovering drives...
for %%D in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%D:\" (
        echo Found drive: %%D:
        call :CopyFiles "%%D:\" "%targetDir%\Drives\%%D" "Drive %%D"
    )
)

echo.
echo Data Cloning Complete.

:end
echo.
echo Operation completed. Copied data from all available drives.
pause
exit /b

:cleanup
echo.
echo Performing cleanup...
echo Remove incomplete copies if necessary...
pause
exit /b 1