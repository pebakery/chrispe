@echo off&Title sDelete Drive
setlocal

SET DRIVE=%1
SET DRIVE2=%DRIVE:\=%
SET DRIVE=%DRIVE2%

:_options
cls
echo.
echo sDelete
echo =======
echo.
echo USE WITH CAUTION ON SSD OR FLASH STORAGE
echo.
echo   1] Zero free space on drive %DRIVE%
echo   2] Clean free space (DOD 5220.22-M) on drive %DRIVE%
echo   3] Exit
echo.
set choice=
set /p choice=Select option [1 to 3] and press ENTER.
if '%choice%'=='1' goto _z
if '%choice%'=='2' goto _c
if '%choice%'=='3' goto _end
goto _options



:_z
cls
"%~dp0sDelete.exe" -z %DRIVE%
echo.
echo.
echo.
pause
cls
goto _end


:_c
cls
"%~dp0sDelete.exe" -c %DRIVE%
echo.
echo.
echo.
pause
cls
goto _end


:_end
endlocal
exit