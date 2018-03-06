@echo off
setlocal
::___________________________________________________________________
::set paths

:: set path to bootsect.exe
set BOOTSECT=%SYSTEMROOT%\SYSTEM32\bootsect.exe

::___________________________________________________________________

IF NOT EXIST %BOOTSECT% (
              ECHO ERROR: Bootsector.exe not found - edit path ...
              pause
              GOTO _edit)



SET DRIVE=%1
SET DRIVE2=%DRIVE:\=%
SET BOOTDRIVE=%DRIVE2%


cls
:_menu
echo.
echo *WARNING* - use following options at own risk. Applying
echo the bootsector to the wrong partition could result in 
echo Windows not booting.
echo.
echo 1] Install "NTLDR" bootsector to %BOOTDRIVE%
echo 2] Install "BOOTMGR" bootsector to %BOOTDRIVE%
echo.
echo 3] Exit
echo.
set choice=
set /p choice=Type option [1 to 3] and press ENTER.
if '%choice%'=='1' goto _ntldr
if '%choice%'=='2' goto _bootmgr
if '%choice%'=='3' goto _end
GOTO _menu

:_ntldr
cls
ECHO Installing "NTLDR" bootsector to %BOOTDRIVE%
ECHO *************************************
ECHO.
%BOOTSECT% /nt52 %BOOTDRIVE% /force
ECHO.
ECHO.
ECHO.
pause
GOTO _end

:_bootmgr
cls
ECHO Installing "BOOTMGR" bootsector to %BOOTDRIVE%
ECHO ***************************************
ECHO.
%BOOTSECT% /nt60 %BOOTDRIVE% /force
ECHO.
ECHO.
ECHO.
pause
GOTO _end

::___________________________________________________________________
:_edit
cls
notepad "%~dp0BOOTSECT.CMD"
goto _end

::___________________________________________________________________
:_end
cls
ECHO.
ECHO ENDING SCRIPT...
echo.
echo.
echo.
pause
endlocal