@echo off
setlocal
set BCDEDIT=%SYSTEMROOT%\system32\bcdedit.exe
set BCDSTORE=%~dp0BCD
IF EXIST %BCDSTORE% del %BCDSTORE% /F

Echo Creating store...
%BCDEDIT% /createstore %BCDSTORE%
echo.

Echo Creating bootmgr entry...
%BCDEDIT% /store %BCDSTORE% /create {bootmgr}
%BCDEDIT% /store %BCDSTORE% /set {bootmgr} description "Boot Manager"
%BCDEDIT% /store %BCDSTORE% /set {bootmgr} device boot
%BCDEDIT% /store %BCDSTORE% /set {bootmgr} timeout 20
echo.


ECHO Creating ramdisksdidevice entry...
for /f "tokens=2 delims={}" %%g in ('%BCDEDIT% /store %BCDSTORE% /create /device') do set ramdisk={%%g} 
%BCDEDIT% /store %BCDSTORE% /set %ramdisk% ramdisksdidevice boot
%BCDEDIT% /store %BCDSTORE% /set %ramdisk% ramdisksdipath \boot\boot.sdi 



Echo Adding RAM Boot WinPE entry...
for /f "tokens=2 delims={}" %%g in ('%BCDEDIT% /store %BCDSTORE% /create /application osloader') do set GUID={%%g}
%BCDEDIT% /store %BCDSTORE% /set %GUID% systemroot \Windows
%BCDEDIT% /store %BCDSTORE% /set %GUID% detecthal Yes
%BCDEDIT% /store %BCDSTORE% /set %GUID% winpe Yes
%BCDEDIT% /store %BCDSTORE% /set %GUID% osdevice ramdisk=[boot]\sources\boot.wim,%ramdisk%
%BCDEDIT% /store %BCDSTORE% /set %GUID% device ramdisk=[boot]\sources\boot.wim,%ramdisk%
%BCDEDIT% /store %BCDSTORE% /set %GUID% path \windows\system32\winload.exe
%BCDEDIT% /store %BCDSTORE% /set %GUID% description "Windows PE RAMBoot (BIOS)"
%BCDEDIT% /store %BCDSTORE% /displayorder %guid% /addlast

echo.
pause


:_end
