@echo off&Title JkDefrag
setlocal

SET DRIVE=%1
SET DRIVE2=%DRIVE:\=%
SET DRIVE=%DRIVE2%

:_options
cls
echo.
echo JkDefrag v3.36
echo ==============
echo.
echo CAUTION - DO NOT RUN THIS ON SSD OR FLASH STORAGE
echo.
echo   1] Analyse drive (%DRIVE%)
echo   2] Defragment drive (%DRIVE%)
echo   3] Defragment and fast optimize (%DRIVE%)
echo   4] As option 3 - ALL drives
echo   5] Exit
echo.
set choice=
set /p choice=Select option [1 to 5] and press ENTER.
if '%choice%'=='1' goto _analyse
if '%choice%'=='2' goto _defrag
if '%choice%'=='3' goto _optimize
if '%choice%'=='4' goto _all
if '%choice%'=='5' goto _end
goto _options



:_analyse
cls
"%~dp0JkDefrag64.exe" -a 1 %DRIVE%
goto _log



:_defrag
cls
"%~dp0JkDefrag64.exe" -a 2 %DRIVE%
goto _log



:_optimize
cls
"%~dp0JkDefrag64.exe" -a 3 %DRIVE%
goto _log



:_all
cls
"%~dp0JkDefrag64.exe"
goto _log


:_log
cls
echo.
echo JkDefrag v3.36
echo ==============
echo.
echo   1] View log
echo   2] Return to main menu
echo   3] Exit
echo.
set choice=
set /p choice=Select option [1 to 3] and press ENTER.
if '%choice%'=='1' goto _view
if '%choice%'=='2' goto _options
if '%choice%'=='3' goto _end
goto _log



:_view
cls
notepad.exe "%~dp0JkDefrag64.log"
GOTO _options



:_end
endlocal
exit