     
@echo off
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do (
IF EXIST %%a:\Programs.x86\LaunchBar\LaunchBar.exe (
CD /D %%a:\Programs.x86\LaunchBar
Start LaunchBar.exe LaunchBar.ini
CALL "..\registry.entries.cmd"
GOTO _exit
)
)
cls
ECHO Couldn't find \Programs.x86\LaunchBar\LaunchBar.exe
ECHO at the root of any available drives
ECHO.
ECHO Is the drive Mounted? Try running the Write Protect
ECHO Tool or diskpart to mount your drive and then re-run
ECHO this batch file.
ECHO.
PAUSE
:_exit
exit
