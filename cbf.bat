:_

@echo off



:_

set filep=* Composable batch files menu.



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo File purpose: %filep%

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

set fp=* List of CBF Helper Batch (bat) files.

echo.
echo %fp%

echo.
echo  File  Wrapper Description
echo  ----  ------------------------------------------------------------------
echo     a  AWS CLI
echo    an  Application nickname dictionary layer of abstraction
echo    as  Windows file associations
echo     c  Clear screen and reset color
echo   cbf  Show this list of CBF batch files
echo    ch  Chef command line utility
echo   clc  Simple calculator
echo    cn  Git cloning, based entirely on the nickname parameter
echo   cng  Git cloning, generic version
echo   col  Shell window colors operations
echo  ccfn  Code Compare with aliases or filenames
echo  cc12  Code Compare preloaded with j1.txt and j2.txt
echo    cs  File contents search
echo   cst  File contents search with td parameter
echo    cu  Curl hooked up to the nicknames dictionary
echo    cy  Copy file(s)
echo  cyfn  Copy file from alias filename parm 1 to alias filename param 2
echo  cypn  Copy file from alias path param 1 to alias path param 2
echo   cyt  Copy file in the current directory to nickname-specified path
echo   cyf  Copy file from a cbf_path nickname
echo     d  Dir for current folder
echo    dd  Dir filename extension searcher including subfolders
echo   ddc  Dir filename extension searcher current folder only
echo    dr  Dir remote searcher
echo    dt  Dir with a td parameter
echo    de  Delete
echo  depn  Delete folder corresponding to CBF path alias parameter
echo    dn  Dot Net core
echo     e  Uses mx.bat then me.bat to decipher which file to edit
echo    ea  Application-centric way to run an application
echo    ed  Edit a file abstraction layer
echo   edx  Edit a file Emulated Surf
echo    ex  Exit command window
echo    fn  Filenames dictionary layer of abstraction
echo    fs  Filenames search
echo   fst  Filenames search with a td parameter
echo   fsp  Perennial filenames search
echo     g  Git
echo    gg  Git Gui helper Has TD parameter
echo    gl  Glossary of terms used in CBF
echo    gr  Gradle
echo     h  Sencha
echo     i  CBF environment variable information
echo    kn  Knife, a Chef command line utility
echo     l  Google searcher
echo     m  Perform miscellaneous tasks
echo   mcd  Make and navigate (cd) to a folder
echo    me  Multi-Edit
echo   mav  Maven
echo    mv  Move files
echo   mvt  Move file in the current directory to nickname-specified path
echo    mx  Use Multi-Edit to edit a batch file in the CBF folder
rem (!rfsp) (mov-2)
echo     n  Nicknames dictionary
echo  n_ey  An empty nicknames dictionary, useful for starting over
echo    nm  NPM
echo    no  Notepad
echo   net  Netstat
echo   nox  Use Notepad to edit a batch file in the CBF folder
echo    np  Notepad++
echo    nx  Use Notepad++ to edit a batch file in the CBF folder
echo    of  Open Folder, has TD parameter
echo     p  Add, commit and push Git changes, has TD parameter
echo    pl  Git pull, has TD parameter
echo    pg  Ping hooked up to the nicknames dictionary
echo   pgs  PostgreSQL (in development)
echo    ps  PowerShell
echo     r  Run application using CBF variables
echo   rzr  Multi-Edit abstraction layer for running CBF files
echo  rzrp  Multi-Edit abstraction layer for running CBF files, with a pause
echo     s  Check git status remotely, has TD parameter
echo  scpp  Secure Copy Protocol
echo    se  Internet search helper
echo    ss  Super status, that is status for all selected repositories
echo   sln  Open a Visual Studio solution, has TD parameter
echo    sh  SSH
echo    sx  Use Sublime to edit a batch file in the CBF folder
echo    sf  Surf to websites
echo    sm  Sublime
echo    sp  Super push, i.e. push all selected repositories
echo   spl  Super pull, i.e. pull all selected repositories
echo   sql  MySQL/Database, including LDAP, related tasks
echo     t  Testing, experimenting and developing new batch file functions
echo    ty  Use the type command to view a nickname-specified file
echo    tf  Terraform
echo    tk  Taskkill
echo    tl  Tasklist
echo    td  Transform Directory
echo    ty  Type command to view nickname-specified file
echo   tdf  Transform Directory where only the Cbf_filename is known
echo   tdp  Transform Directory to parent folder
echo    te  Batch file template used for creating new batch files
echo    un  URL nicknames dictionary layer of abstraction
echo     v  Vetted functions (Useful for copying-and-pasting)
echo    wp  Wordpad
echo     x  Remote double-click equivalent way to run a file

exit/b



:_