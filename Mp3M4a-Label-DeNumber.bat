@echo off
setlocal enabledelayedexpansion

:: Save original directory
set "original_dir=%cd%"

:: Change to script's own directory (to avoid admin default paths)
cd /d "%~dp0" 2>nul

:: Determine target directory (dragged folder or current directory)
set "target_dir=%~1"
if "%target_dir%"=="" set "target_dir=."

:: Change to target directory
cd /d "%target_dir%" 2>nul
if errorlevel 1 (
    echo Error: Cannot access directory "%target_dir%"
    pause
    exit /b
)

echo ========================================================
echo     Mp3M4a-Conformer
echo ========================================================
echo.

set "count=0"

:: Process all .mp3 and .m4a files
for %%F in (*.mp3 *.m4a) do (
    set "filename=%%~nxF"

    :: Check if the filename starts with "## - " (e.g. "01 - ")
    if "!filename:~2,3!"==" - " (

        :: Create new name by removing the first 5 characters
        set "new_filename=!filename:~5!"

        :: Prevent overwriting
        if exist "!new_filename!" (
            echo [SKIP]   "!filename!" -- Target "!new_filename!" already exists
        ) else (
            echo [RENAME] "!filename!" --^> "!new_filename!"
            ren "!filename!" "!new_filename!"
            if not errorlevel 1 set /a count+=1
        )
    )
)

:: Return to original directory
cd /d "%original_dir%" 2>nul

echo.
echo ========================================================
echo  Done! Successfully renamed %count% file(s).
echo ========================================================
pause