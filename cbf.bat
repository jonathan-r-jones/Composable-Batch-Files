:_

@echo off



:_

set filep=* List of CBF Helper Batch files updated on Apr-9-2018.



:_

set fp=* Route callers.

if "%~1" == "" goto l

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_ (!rfsp) (mov-9)

:h

:help

echo.
echo %filep%

echo.
echo Filename stands for: Composed Batch Files

echo.
echo Last Updated (lu): Apr-10-2018

echo.
echo Usage: %0

m exitb



:_

:l

:list

set fp=* List of CBF Helper Batch files updated on Apr-9-2018.

echo.
echo  %fp%
echo.

echo   File  Description
echo   ----  ------------------------------------------------------------------
echo   acp:  Add, commit and push Git changes with timestamp commit message.
echo     c:  Clear screen and reset color.
echo   cbf:  Show the state of CBF environment variables.
echo    cn:  Used for Git cloning tasks.
echo    cy:  Copy file(s).
echo  cysd:  Copy file file from source to destination.
echo     d:  Easier-to-type and remember version of "dir".
echo     e:  Exit command window.
echo    ea:  Application-centric way of running an app with opt. file param.
echo    ed:  Filename-centric way of editing a file with optional app. param.
echo     g:  Perform Git-related tasks.
echo     h:  Perform Sencha-related tasks.
echo     k:  Double-click equivalent way to exec. a file with opt. app. param.
echo     m:  Perform miscellaneous tasks.
echo    me:  Run Multi-Edit.
echo    mx:  Use Multi-Edit to edit a batch file in the CBF folder.
echo     n:  Nicknames source dictionary.
echo    no:  Run Notepad.
echo   npp:  Run Notepad++.
echo    of:  Open Folder.
echo    rf:  Remove folder corresponding to specified CBF path nickname. 
echo     s:  SQL/Database, including LDAP, related tasks.
echo    sf:  Surf to websites.
echo    sm:  Run Sublime.
echo    td:  Transform Directory.
echo     x:  Execute the nickname based on what type of nickname it is.

m exitb



:_