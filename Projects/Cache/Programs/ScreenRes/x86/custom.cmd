@ECHO OFF
setlocal

:_menu
cls
echo Select one of the following options
echo.
echo  1] 1024 x 768 	(XGA)	4:3 
echo  2] 1152 x 864 	(XGA+)	4:3
echo  3] 1280 x 1024	(SXGA)	4:3
echo  4] 1280 x 768 	(WXGA)	5:3
echo  5] 1280 x 720 	(WXGA)	16:9
echo  6] 1366 x 768 	(HD)	16:9
echo  7] 1600 x 900 	(HD+)	16:9
echo  8] 1280 x 800 	(WXGA)	16:10
echo  9] 1440 x 900 	(WXGA+)	16:10
echo.
set choice=
set /p choice=Type [1 to 9] and press ENTER.
if '%choice%'=='1' goto _1
if '%choice%'=='2' goto _2
if '%choice%'=='3' goto _3
if '%choice%'=='4' goto _4
if '%choice%'=='5' goto _5
if '%choice%'=='6' goto _6
if '%choice%'=='7' goto _7
if '%choice%'=='8' goto _8
if '%choice%'=='9' goto _9
goto_menu




:_1
cls
set h=1024
set v=768
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end



:_2
cls
set h=1152
set v=864
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end:


:_3
cls
set h=1280
set v=1024
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end


:_4
cls
set h=1280
set v=768
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end


:_5
cls
set h=1280
set v=720
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end


:_6
cls
set h=1366
set v=768
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end


:_7
cls
set h=1600
set v=900
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end


:_8
cls
set h=1280
set v=800
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end


:_9
cls
set h=1440
set v=900
start wpeinit.exe /unattend=%~dp0%h%x%v%.xml
echo.
echo.
goto _end




:_end
pause
endlocal