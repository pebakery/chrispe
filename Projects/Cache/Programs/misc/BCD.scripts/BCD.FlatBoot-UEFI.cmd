@echo off
setlocal
set BCDEDIT=%SYSTEMROOT%\system32\bcdedit.exe
set BCDSTORE=%~dp0BCD
set LABEL="Windows PE FlatBoot (UEFI)"
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

Echo Adding FlatBoot WinPE entry...
for /f "tokens=2 delims={}" %%g in ('%BCDEDIT% /store %BCDSTORE% /create /application osloader') do set guid={%%g}
%BCDEDIT% /store %BCDSTORE% /set %guid% path \windows\system32\winload.efi
%BCDEDIT% /store %BCDSTORE% /set %guid% device boot
%BCDEDIT% /store %BCDSTORE% /set %guid% osdevice boot
%BCDEDIT% /store %BCDSTORE% /set %guid% systemroot \Windows
%BCDEDIT% /store %BCDSTORE% /set %guid% description %LABEL%
%BCDEDIT% /store %BCDSTORE% /set %guid% winpe yes
%BCDEDIT% /store %BCDSTORE% /set %guid% detecthal yes
%BCDEDIT% /store %BCDSTORE% /displayorder %guid% /addlast
echo.
pause


:_end
