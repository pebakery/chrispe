@echo off
setlocal

IF EXIST %SYSTEMROOT%\System32\Drivers\imdisk.sys GOTO _run

ECHO Installing ImDisk...
rundll32.exe setupapi.dll,InstallHinfSection DefaultInstall 132 %~dp0imdisk.inf

:_run
start rundll32.exe imdisk.cpl,RunDLL_MountFile
endlocal
exit



