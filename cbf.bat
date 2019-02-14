:_

@echo off



:_

set filename_stands_for=* Composable batch files menu.



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

echo.
echo %fp%

echo.
echo  File  Description
echo  ----  ------------------------------------------------------------------
echo     a  A wrapper around AWS CLI.
echo    an  Application nickname dictionary.
echo    aw  A CWS CLI demo companion file.
echo     c  Clear screen and reset color.
echo   cbf  Show this list of CBF batch files.
echo   clc  Simple calculator.
echo    cn  Used for Git cloning tasks.
echo   col  Performs shell window colors operations.
echo    cp  Run Code Compare with aliases or filenames.
echo    cs  File contents search.
echo    cu  Curl operations hooked up to the nicknames dictionary.
echo    cy  Copy file(s).
echo  cyft  Copy files from nickname parameter 1 to nickname parameter 2.
echo   cyt  Copies file in the current directory to nickname-specified path.
echo   cyf  Copies files from a cbf_path nickname.
echo     d  Easier-to-type and remember version of "dir".
echo    dd  Dir filename extension searcher.
echo    de  Delete operations.
echo   def  Delete folder corresponding to specified CBF path nickname. 
echo    dn  Perform Dot Net core functions.
echo     e  Exit command window.
echo    ea  Application-centric way to run an application.
echo    ed  Edit a file abstraction layer.
echo   edx  Edit a file. Emulated Surf.
echo   env  Show the state of the CBF environment variables.
echo    fs  Filenames search.
echo     g  Perform Git-related tasks.
echo    gg  Git Gui helper. Has TD parameter.
echo    gl  Glossary of terms used in CBF.
echo    gr  Perform Gradle-related tasks.
echo     h  Perform Sencha-related tasks.
echo    lh  Surf localhost.
echo     m  Perform miscellaneous tasks.
echo   mcd  Make and navigate (cd) to a folder.
echo    me  Run Multi-Edit.
echo   mav  Maven wrapper.
echo    mv  Move files wrapper.
echo    mx  Use Multi-Edit to edit a batch file in the CBF folder.
rem (!rfsp) (mov-2)
echo     n  Nicknames dictionary.
echo  n_ey  Empty Nicknames dictionary. Useful for restarting.
echo    nm  Perform NPM-related tasks.
echo    no  Run Notepad.
echo   nox  Use Notepad to edit a batch file in the CBF folder.
echo    np  Run Notepad++.
echo    nx  Use Notepad++ to edit a batch file in the CBF folder.
echo    of  Open Folder. Has TD parameter.
echo     p  Add, commit and push Git changes. Has TD parameter.
echo    pl  Performs Git pull. Has TD parameter.
echo    pg  Ping command hooked up to the nicknames dictionary.
echo    ps  Enter PowerShell.
echo     r  Run application using CBF variables.
echo   rzr  Multi-Edit abstraction layer.
echo     s  Run git status remotely. Has TD parameter.
echo    se  Internet search helper.
echo   sln  Open a Visual Studio solution. Has TD parameter.
echo    sh  Perform SSH-related commands.
echo    sx  Use Sublime to edit a batch file in the CBF folder.
echo    sf  Surf to websites.
echo    sm  Run Sublime.
echo   sql  SQL/Database, including LDAP, related tasks.
echo     t  Testing, experimenting and developing new batch file functions.
echo    tf  Perform Terraform-related tasks.
echo    tk  Wrapper around the taskkill command.
echo    tl  Wrapper around the tasklist command.
echo    td  Transform Directory.
echo   tdf  Transform Directory where only the Cbf_filename is known.
echo   tdp  Transform Directory to parent folder.
echo    te  Batch file template used for creating new batch files.
echo     v  Vetted functions (Useful for copying-and-pasting).
echo    wp  Run Wordpad.
echo     x  Remote double-click equivalent way to run a file.

exit/b



:_