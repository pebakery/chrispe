@echo off

:: Windows7 default 	- ALIGN1=65536 	ALIGN2=1048576
:: MS Advice states 	- ALIGN1=0 	ALIGN2=0

FOR /F "tokens=3" %%i in ('REG QUERY HKLM\SYSTEM\CurrentControlSet\services\vds\alignment /v LessThan4GB') DO SET Status=%%i

if %status%==0x0 goto _cylinder
if %status%==0x10000 goto _megabyte

ECHO Warning - a custom partition offset is in use
ECHO.
ECHO.
pause
goto _options


:_cylinder
ECHO.
ECHO Any new partitions created will be aligned to cylinder boundaries -
ECHO these are compatible with older version of Windows (2000/XP/2003)
ECHO.
ECHO.
pause
goto _options



:_megabyte
ECHO.
ECHO Any new partitions created will be 'MegaByte aligned' - it will not be 
ECHO possible to install older versions of Windows (2000/XP/2003) to them.
ECHO.
ECHO.
pause
goto _options





:_options
cls
ECHO.  
echo 1] Megabyte aligned (Windows 7 Default Values)
echo 2] Cylinder aligned (use if installing 2000/XP)
echo 3] Abort
echo.
set choice=
set /p choice=Select option [1 to 3] and press ENTER.
if '%choice%'=='1' goto _1
if '%choice%'=='2' goto _2
if '%choice%'=='3' goto _3
goto _options

:_1
cls
set ALIGN1=65536
set ALIGN2=1048576
goto _run

:_2
cls
set ALIGN1=0
set ALIGN2=0
goto _run

:_3
exit

:_run
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\vds\alignment" /v LessThan4GB /t REG_DWORD /d %ALIGN1% /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\vds\alignment" /v Between4_8GB /t REG_DWORD /d %ALIGN2% /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\vds\alignment" /v Between8_32GB /t REG_DWORD /d %ALIGN2% /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\vds\alignment" /v GreaterThan32GB /t REG_DWORD /d %ALIGN2% /f

ECHO.
ECHO.
ECHO.

pause