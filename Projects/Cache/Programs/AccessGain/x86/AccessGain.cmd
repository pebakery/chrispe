@echo off
SETLOCAL

set CAPTURE=%1
SET TARGET=%CAPTURE:\=%

IF NOT EXIST %SYSTEMROOT%\system32\drivers\accgain.sys GOTO _install
GOTO _menu


:_install
ECHO Installing accgain.inf
echo.
%SYSTEMROOT%\System32\rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %~dp0accgain.inf
echo.
echo.
echo.
pause


:_menu
cls
ECHO AccessGain
ECHO ==========
ECHO.
ECHO Bypass NTFS security permissions on drive (%TARGET%)
ECHO.
echo   1] Load Driver
echo   2] Unload Driver
echo   3] Bypass security on drive (%TARGET%)
echo   4] Unmount drive (%TARGET%)
echo   5] Exit
echo.
set choice=
set /p choice=Select option [1 to 5] and press ENTER.
if '%choice%'=='1' goto _load
if '%choice%'=='2' goto _unload
if '%choice%'=='3' goto _mount
if '%choice%'=='4' goto _unmount
if '%choice%'=='5' goto _end
goto _menu


:_load
cls
echo Running Command "fltmc load AccessGainDriver"
fltmc load AccessGainDriver
IF ERRORLEVEL 1 GOTO _error1
echo.
echo.
echo.
pause
GOTO _menu

:_error1
cls
echo ERROR loading Driver - already loaded? 
echo.
echo.
echo.
pause
goto _menu



:_unload
cls
echo Running Command "fltmc unload AccessGainDriver"
fltmc unload AccessGainDriver
IF ERRORLEVEL 1 GOTO _error2
echo.
echo.
echo.
pause
GOTO _end

:_error2
cls
echo ERROR unloading driver - already unloaded? 
echo.
echo.
echo.
pause
goto _menu





:_mount
cls
echo Running Command "fltmc attach AccessGainDriver %target%"
fltmc attach AccessGainDriver %target%
IF ERRORLEVEL 1 GOTO _error3
echo.
echo.
echo.
pause
GOTO _end


:_error3
cls
echo ERROR mounting drive - is driver loaded? 
echo.
echo.
echo.
pause
goto _menu




:_unmount
cls
echo Running Command "fltmc detach AccessGainDriver %target%"
fltmc detach AccessGainDriver %target%
IF ERRORLEVEL 1 GOTO _error4
echo.
echo.
echo.
echo.
pause
goto _end


:_error4
cls
echo ERROR unmounting drive - is it mounted? 
echo.
echo.
echo.
pause
goto _menu



:_end
endlocal
exit




