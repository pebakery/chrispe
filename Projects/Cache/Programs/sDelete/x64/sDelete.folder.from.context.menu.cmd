@echo off&Title sDelete Folder
setlocal



:_options
cls
echo.
echo sDelete
echo =======
echo.
echo USE WITH CAUTION ON SSD OR FLASH STORAGE
echo. 
echo   1] Erase Folder and subfolders
echo   2] Exit
echo.
set choice=
set /p choice=Select option [1 or 2] and press ENTER.
if '%choice%'=='1' goto _eraserecurse
if '%choice%'=='2' goto _end
goto _options

:_eraserecurse
cls
"%~dp0sDelete64.exe" -s %1
echo.
echo.
echo.
pause
cls
goto _end

:_end
endlocal
exit