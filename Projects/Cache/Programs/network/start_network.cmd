@echo off&Title InitializeNetwork
mode con: cols=80 lines=30 
color 9F

:_menu
cls
echo.
echo Options - 
echo.
echo   1] Start Network 
echo   2] Start Network and disable Firewall 
echo.
set choice=
set /p choice=Select option. Type [1] or [2] or [E] to exit and press ENTER.
if '%choice%'=='1' goto _network
if '%choice%'=='2' goto _firewall
if '%choice%'=='e' goto _exit
if '%choice%'=='E' goto _exit
GOTO _menu

:_network
cls
echo Running "wpeutil InitializeNetwork" command
wpeutil InitializeNetwork 
echo.
echo.
echo.
pause
exit

:_firewall
cls
echo Running "wpeutil InitializeNetwork" command
wpeutil InitializeNetwork 
echo.
echo.
echo.
echo Running "wpeutil DisableFirewall" command
wpeutil DisableFirewall 
echo.
echo.
echo.
pause
exit

:_exit
exit