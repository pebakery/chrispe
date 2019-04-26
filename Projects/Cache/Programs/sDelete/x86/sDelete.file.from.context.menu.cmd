@echo off&Title sDelete File
setlocal



:_options
cls
echo.
echo sDelete
echo =======
echo.
echo USE WITH CAUTION ON SSD OR FLASH STORAGE
echo.
echo   1] Erase file
echo   2] Exit
echo.
set choice=
set /p choice=Select option [1 or 2] and press ENTER.
if '%choice%'=='1' goto _erase
if '%choice%'=='2' goto _end
goto _options



:_erase
cls
"%~dp0sDelete.exe" %1
echo.
echo.
echo.
pause
cls


:_end
endlocal
exit