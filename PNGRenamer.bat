@echo off
setlocal enabledelayedexpansion

echo ===============================================
echo  PNG File Prefix Renamer
echo ===============================================
echo.

REM === Ask user for prefix ===
set /p "PREFIX=Enter prefix to add before each filename (e.g. pl_): "
echo.

REM === Confirm action ===
echo Applying prefix "%PREFIX%" to all .png files in:
echo %cd%
echo.
pause

REM === Loop through all .png files in the current folder ===
for %%F in (*.png) do (
    set "OLDNAME=%%~nF"
    set "EXT=%%~xF"
    set "NEWNAME=%PREFIX%!OLDNAME!!EXT!"
    echo Renaming "%%F" -> "!NEWNAME!"
    ren "%%F" "!NEWNAME!"
)

echo.
echo  Done! All PNG files have been renamed.
pause
