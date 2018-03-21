@echo off&Title Find Programs Drive
mode con: cols=60 lines=30
setlocal

:_menu
cls
echo.
echo This batch file will search any MOUNTED drives for the 
echo file #:\Programs.x64\MistyPE.menu.cmd and will run it 
echo if found.
echo.
echo MistyPE.menu.cmd will add menu entries for any programs  
echo included during the MistyPE/Mini-WinFE build process.
echo.
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
for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do (
	IF EXIST %%a:\Programs.x64\MistyPE.menu.cmd (
	CALL %%a:\Programs.x64\MistyPE.menu.cmd
	ECHO.
	GOTO _exit
	)
)


cls
ECHO Couldn't find \Programs.x64\MistyPE.menu.cmd at the  
ECHO root of any available drives
ECHO.
ECHO Is the drive Mounted? Try running the Write Protect 
ECHO Tool or diskpart to mount your drive and then re-run
ECHO this batch file.
ECHO.
PAUSE


:_exit
exit


