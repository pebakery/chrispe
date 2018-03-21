@echo off
setlocal
set BCDEDIT=%SYSTEMROOT%\system32\bcdedit.exe


:_options
cls
echo.
ECHO RUN AS ADMINISTRATOR
echo.
echo   1] BIOS-FLATBoot-BCD
echo   2] BIOS-RAMBoot-BCD
echo   3] UEFI-FLATBoot-BCD
echo   4] UEFI-RAMBoot-BCD
echo.
set choice=
set /p choice=Select option [1 - 4] and press ENTER.
if '%choice%'=='1' goto _1
if '%choice%'=='2' goto _2
if '%choice%'=='3' goto _3
if '%choice%'=='4' goto _4
goto _options


:_1
set BCDSTORE=%~dp0BIOS-FLATBoot-BCD
goto _run

:_2
set BCDSTORE=%~dp0BIOS-RAMBoot-BCD
goto _run

:_3
set BCDSTORE=%~dp0UEFI-FLATBoot-BCD
goto _run

:_4
set BCDSTORE=%~dp0UEFI-RAMBoot-BCD
goto _run

:_run
cls
echo.
%BCDEDIT% /store %BCDSTORE% /enum ALL /v
echo.
echo.
echo.
pause
goto _options