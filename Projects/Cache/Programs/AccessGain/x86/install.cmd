@echo off

:_continue
ECHO Installing accgain.inf
echo.
%SYSTEMROOT%\System32\rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %~dp0accgain.inf
echo.
echo.
echo.
pause