:_

@echo off



:_

set fp=* Set Notepad++ installation path.

rem lu: Jan-3-2018

set npp_installation_path=

if exist "c:\program files\notepad++\notepad++.exe" set npp_installation_path=c:\program files\notepad++\notepad++.exe
if exist "c:\program files (x86)\notepad++\notepad++.exe" set npp_installation_path="c:\program files (x86)\notepad++\notepad++.exe"

if "%npp_installation_path%"=="" echo.
if "%npp_installation_path%"=="" echo Notepad++ is not installed.
if "%npp_installation_path%"=="" goto exitb

rem echo %npp_installation_path%



:_

set fp=* Set application.

set cbf_application=%npp_installation_path%

call ef %1

goto exitb



:_+ Exit Functions



::_

:exit

set fp= * Exit.

rem echo %fp%

exit



::_

:exitb

set fp= * Exit batch file but not command window.

exit /b



::_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

pause

exit



::_

rem **************************** End Exit Functions.



:_ (!sp) (mov-9)