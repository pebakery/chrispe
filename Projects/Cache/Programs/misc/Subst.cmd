@echo off


for %%a in (c d e f g h i j k l m n o p q r s t u v w x y z) do (
IF EXIST %%a:\MyTagFile (
SET MEDIA=%%a
IF NOT EXIST MOUNTA:\ GOTO _preferred
IF NOT EXIST MOUNTB:\ GOTO _fallback
GOTO _error1
)
)
GOTO _error2

:_preferred
subst.exe MOUNTA: %MEDIA%:\
goto _exit


:_fallback
subst.exe MOUNTB: %MEDIA%:\
goto _exit


:_error1
cls
ECHO Error running the subst script. The mount points MOUNTA: (preferred)
ECHO and MOUNTB: (fallback) must already be in use
ECHO.
PAUSE

:_error2
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

