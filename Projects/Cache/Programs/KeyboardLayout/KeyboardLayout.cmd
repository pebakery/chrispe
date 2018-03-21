@echo off


SETLOCAL ENABLEEXTENSIONS
FOR /F "skip=2 tokens=3" %%? IN ('REG QUERY "HKU\.DEFAULT\Control Panel\International" /v Locale') DO SET CURRENT.REGION=%%?
SET CURRENT.REGION=%CURRENT.REGION:~-5%

:_menu1
cls
echo.
echo Set Keyboard Layout
echo ===================
echo.
echo   01] Bulgarian (bg)					
echo   02] Croatian (hr)
echo   03] Czech (cs)
echo   04] Danish (da)
echo   05] Dutch (nl-nl)
echo   06] Dutch-Belgian (nl-nl)
echo   07] English-Australian
echo   08] English-Canadian (en-ca)
echo   09] English-New Zealand (en-nz)
echo   10] English-UK (en-gb)
echo   11] English-US (en-us)
echo   12] Finnish (fi)
echo.
echo   13] MORE OPTIONS
echo.
echo   14] Exit
echo.
set /p LANG="Enter your choice: "
IF "%LANG%"=="01" GOTO _101
IF "%LANG%"=="02" GOTO _102
IF "%LANG%"=="03" GOTO _103
IF "%LANG%"=="04" GOTO _104
IF "%LANG%"=="05" GOTO _105
IF "%LANG%"=="06" GOTO _106
IF "%LANG%"=="07" GOTO _107
IF "%LANG%"=="08" GOTO _108
IF "%LANG%"=="09" GOTO _109
IF "%LANG%"=="10" GOTO _110
IF "%LANG%"=="11" GOTO _111
IF "%LANG%"=="12" GOTO _112
IF "%LANG%"=="13" GOTO _menu2
IF "%LANG%"=="14" GOTO _exit
GOTO _menu1


:_101
SET DATA=%CURRENT.REGION%:00000402 & GOTO _run

:_102
SET DATA=%CURRENT.REGION%:0000041a & GOTO _run

:_103
SET DATA=%CURRENT.REGION%:00000405 & GOTO _run

:_104
SET DATA=%CURRENT.REGION%:00000406 & GOTO _run

:_105
SET DATA=%CURRENT.REGION%:00000413 & GOTO _run

:_106
SET DATA=%CURRENT.REGION%:00000813 & GOTO _run

:_107
SET DATA=%CURRENT.REGION%:00000c09 & GOTO _run

:_108
SET DATA=%CURRENT.REGION%:00001009 & GOTO _run

:_109
SET DATA=%CURRENT.REGION%:00001409 & GOTO _run

:_110
SET DATA=%CURRENT.REGION%:00000809 & GOTO _run

:_111
SET DATA=%CURRENT.REGION%:00000409 & GOTO _run

:_112
SET DATA=%CURRENT.REGION%:0000040b & GOTO _run






:_menu2
cls
echo.
echo Set Keyboard Layout
echo ===================
echo.
echo   01] French (fr-fr)					
echo   02] German (de-de)			
echo   03] Italian (it-it)					
echo   04] Portuguese (pt-pt)					
echo   05] Spanish (es-es)					
echo   06] Spanish-Mexican (es-mx)					
echo.
echo   07] Exit
echo.
set /p LANG="Enter your choice: "
IF "%LANG%"=="01" GOTO _201
IF "%LANG%"=="02" GOTO _202
IF "%LANG%"=="03" GOTO _203
IF "%LANG%"=="04" GOTO _204
IF "%LANG%"=="05" GOTO _205
IF "%LANG%"=="06" GOTO _206
IF "%LANG%"=="07" GOTO _exit
GOTO _menu2


:_201
SET DATA=%CURRENT.REGION%:0000040c & GOTO _run

:_202
SET DATA=%CURRENT.REGION%:00000407 & GOTO _run

:_203
SET DATA=%CURRENT.REGION%:00000410 & GOTO _run

:_204
SET DATA=%CURRENT.REGION%:00000816 & GOTO _run

:_205
SET DATA=%CURRENT.REGION%:0000040a & GOTO _run

:_206
SET DATA=%CURRENT.REGION%:0000080a & GOTO _run



:_run
cls
echo.
ECHO wpeutil SetKeyboardLayout %DATA%
wpeutil SetKeyboardLayout %DATA%
echo.
echo.
echo.
PAUSE



:_exit
cls
EXIT

