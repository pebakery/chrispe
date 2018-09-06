@echo off&Title Find Programs Drive
mode con: cols=80 lines=30 
color 9f
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

:_menu
cls
echo.
echo This batch file will search any MOUNTED drives for the 
echo following file - 
echo.
echo 	#:\MyTagFile 
echo.
echo This will be used to locate your media and will then run
echo a series of batch files to add program shortcuts and 
echo registry settings.
echo.
set choice=
set /p choice=Do you wish to proceed? Yes[y] or no [n] and press ENTER.
if '%choice%'=='y' goto _run
if '%choice%'=='Y' goto _run
if '%choice%'=='n' goto _exit
if '%choice%'=='N' goto _exit
GOTO _menu

:_run
cls
for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
IF EXIST %%a:\MyTagFile (
IF EXIST %%a:\Programs.x86\ShortcutsNotInWim.cmd CALL %%a:\Programs.x86\ShortcutsNotInWim.cmd
IF EXIST %%a:\Programs.x86\ShortcutsCopy.cmd CALL %%a:\Programs.x86\ShortcutsCopy.cmd
IF EXIST %%a:\Programs.x86\registry.entries.cmd CALL %%a:\Programs.x86\registry.entries.cmd
IF EXIST %%a:\Programs.x86\LaunchBarX86.cmd CALL %%a:\Programs.x86\LaunchBarX86.cmd
exit
)
)


cls
ECHO Couldn't find the following tag file at the root of
ECHO any available drives -
ECHO.
ECHO	#:\MyTagFile 
ECHO.
ECHO Is the drive Mounted? Try running the Write Protect 
ECHO Tool or diskpart to mount your drive and then re-run
ECHO this batch file.
ECHO.
PAUSE


:_exit
exit
