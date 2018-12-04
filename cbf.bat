:_

@echo off



:_

set filename_stands_for=* Composable batch files menu.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto main_function



:_

:h

:help

echo Filename stands for: %filename_stands_for%

set filep=File purpose: This file shows a list of available CBF files.

echo.
echo %filep%

echo.
echo Last Updated: 

echo.
echo Usage: %0

exit/b



:_

:main_function

set fp=* List of CBF Helper Batch (.bat) files.

echo  %fp%
echo.

echo  File  Description
echo  ----  ------------------------------------------------------------------
echo     c  Clear screen and reset color.
echo   cbf  Show this list of CBF Helper batch files.
echo   clc  Simple calculator.
echo    cn  Used for Git cloning tasks.
echo   col  Reset the dos window color.
echo    cs  File contents search.
echo    cu  Curl batch file hooked up to the nicknames dictionary.
echo    cy  Copy file(s).
echo   cyn  Copies file in the current directory to nickname-specified path.
echo   cys  Copies files from a cbf_path nickname.
echo     d  Easier-to-type and remember version of "dir".
echo    dn  Perform Dot Net core functions.
echo     e  Exit command window.
echo    ea  Application-centric way to run an application.
echo    ed  Edit a file. Emulated Surf.
echo   env  Show the state of the CBF environment variables.
echo    fs  Filenames search.
echo     g  Perform Git-related tasks.
echo    gg  Git Gui helper. Has TD parameter.
echo    gl  Glossary of terms used in CBF.
echo     h  Perform Sencha-related tasks.
echo     m  Perform miscellaneous tasks.
echo   mcd  Make and navigate (cd) to a folder.
echo    me  Run Multi-Edit.
echo    mv  Move files wrapper.
echo    mx  Use Multi-Edit to edit a batch file in the CBF folder.
rem (!rfsp) (mov-2)
echo     n  Nicknames dictionary.
echo  n_ey  Empty Nicknames dictionary. Useful for restarting.
echo    nm  Perform NPM-related tasks.
echo    no  Run Notepad.
echo   nox  Use Notepad to edit a batch file in the CBF folder.
echo   npp  Run Notepad++.
echo    nx  Use Notepad++ to edit a batch file in the CBF folder.
echo    of  Open Folder. Has TD parameter.
echo     p  Add, commit and push Git changes. Has TD parameter.
echo    pg  Ping batch file hooked up to the nicknames dictionary.
echo    ps  Enter PowerShell.
echo     r  Run application using CBF variables.
echo    rf  Remove folder corresponding to specified CBF path nickname. 
echo     s  Open a Visual Studio solution. Has TD parameter.
echo   shh  Perform SSH-related commands.
echo    sx  Use Sublime to edit a batch file in the CBF folder.
echo    sf  Surf to websites.
echo    sm  Run Sublime.
echo   sql  SQL/Database, including LDAP, related tasks.
echo    st  Run git status remotely. Has TD parameter.
echo     t  Testing, experimenting and developing new batch file functions.
echo    tf  Perform Terraform-related tasks.
echo    tk  Wrapper around taskkill command.
echo    tl  Wrapper around tasklist command.
echo    td  Transform Directory.
echo   tdp  Transform Directory to parent folder.
echo    te  Batch file template used for creating new batch files.
echo     v  Vetted functions (Useful for copying-and-pasting).
echo    wp  Run Wordpad.
echo     x  Remote double-click equivalent way to run a file.

exit/b



:_