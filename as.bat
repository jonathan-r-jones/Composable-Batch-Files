:_

@echo off



:_

set filename_stands_for=* Windows file association commands.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Mar-6-2019

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Nickname block to run.

echo.
echo %parameter_1%

exit/b



:_

:me

set fp=* Associate asc files with Multi-Edit.

rem lu: Mar-5-2019

echo.
echo %fp%

echo.
assoc .asc=asc
ftype asc=mew32.exe %%1 %%*

exit/b



:_

:yaml

:yml

set fp=* Associate yml files with Notepad++.

echo.
echo %fp%

echo.
assoc .yml=yml
ftype yml=notepad++.exe %%1 %%*

exit/b



:_

:gradle

set fp=* Associate gradle files with Notepad++.

echo.
echo %fp%

echo.
assoc .gradle=gradle
ftype gradle=notepad++.exe %%1 %%*

exit/b



:_

:xml

set fp=* Associate xml files with Notepad++.

echo.
echo %fp%

echo.
assoc .xml=xmlfile
ftype xmlfile=notepad++.exe %%1 %%*

exit/b



:_ (!rfsp) (mov-6)