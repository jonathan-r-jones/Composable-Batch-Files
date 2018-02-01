:_

@echo off



:_

set fp=* Look up application.

echo.
echo %fp%



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

:help

set fp=To return the full application name corresponding to a given unique nickname in this dictionary.

echo This file purpose (fp) is to: %fp%
echo.

echo The filename stands for: Filename Nicknames.
echo.

echo Last Updated (lu): Jan-24-2018
echo.

echo Usage: %0 [single parameter]
echo.

echo Parm/Nickname  Target
echo -------------  -----------------------------------------------------------
echo            kr  Chrome

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



:_

:kr

set fp=* Chrome.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\Google\Chrome\Application\chrome.exe

goto exitb



:_

:fx

set fp=* Firefox.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\program files\mozilla firefox\firefox.exe

goto exitb



:_

:me

set fp=* Multi-Edit.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\multi-edit 2008\mew32.exe

goto exitb



:_

:sm

set fp=* Sublime.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=C:\Program Files\Sublime Text 3\sublime_text.exe

goto exitb



:_

:no

set fp=* Notepad.

rem lu: Jan-24-2018

echo %fp%

set cbf_application=c:\windows\system32\notepad.exe

goto exitb



:_

:vs

set fp=* Visual Studio.

rem lu: Jan-31-2018

echo %fp%

set cbf_application=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\common7\ide\devenv.exe

goto exitb



:_

:npp

set fp=* Notepad++.

rem lu: Feb-1-2018

echo %fp%

rem Determine installation path.

if exist "c:\program files\notepad++\notepad++.exe" set cbf_application_installation_path=c:\program files\notepad++\notepad++.exe
if exist "c:\program files (x86)\notepad++\notepad++.exe" set cbf_application_installation_path="c:\program files (x86)\notepad++\notepad++.exe"

if "%cbf_application_installation_path%"=="" echo.
if "%cbf_application_installation_path%"=="" echo Notepad++ is not installed.
if "%cbf_application_installation_path%"=="" goto exitb

set cbf_application=%cbf_application_installation_path%

goto exitb



:_

:dc

set fp=* Simulate a double click in CBF.

rem lu: Feb-1-2018

echo %fp%

rem Strangely, this also works. Feb-1-2018
rem set cbf_application="%cbf_filename% - Shortcut.lnk"

set cbf_application=%cbf_filename%
set cbf_parameter=

goto exitb



:_ (!rfsp) (mov-9)