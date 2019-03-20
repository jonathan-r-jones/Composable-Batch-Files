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

set fp=* List of CBF Helper Batch (bat) files.

echo
echo %fp%

echo
echo  File  Wrapper Description
echo  ----  ------------------------------------------------------------------
echo     a  AWS CLI
echo    an  Application nickname dictionary layer of abstraction
echo    as  Windows file associations
echo     c  Clear screen and reset color
echo   cbf  Show this list of CBF batch files
echo    ch  Chef command line utility
echo   clc  Simple calculator
echo    cn  Git cloning
echo   col  Shell window colors operations
echo    cp  Code Compare with aliases or filenames
echo  coco  Code Compare preloaded with j1txt and j2txt
echo    cs  File contents search
echo   cst  File contents search with td parameter
echo    cu  Curl hooked up to the nicknames dictionary
echo    cy  Copy file(s)
echo  cyfn  Copy file from nickname filename parameter 1 to nickname filename parameter 2
echo  cyft  Copy file from nickname path parameter 1 to nickname path parameter 2
echo   cyt  Copy file in the current directory to nickname-specified path
echo   cyf  Copy file from a cbf_path nickname
echo     d  Easier-to-type and remember version of "dir"
echo    dd  Dir filename extension searcher
echo   dds  Dir filename extension searcher including subfolders
echo    de  Delete
echo   def  Delete folder corresponding to specified CBF path nickname 
echo    dn  Dot Net core
echo     e  Exit command window
echo    ea  Application-centric way to run an application
echo    ed  Edit a file abstraction layer
echo   edx  Edit a file Emulated Surf
echo   env  Show the state of the CBF environment variables
echo    fn  Filenames dictionary layer of abstraction
echo    fs  Filenames search
echo   fst  Filenames search with a td parameter
echo   fsp  Perennial filenames search
echo     g  Git
echo    gg  Git Gui helper Has TD parameter
echo    gl  Glossary of terms used in CBF
echo    gr  Gradle
echo     h  Sencha
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
echo    nd  Show nickname definition
echo  n_ey  Empty Nicknames dictionary, useful for building a nicknames dictionary anew
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
echo   pgs  PostgreSQL
echo    ps  PowerShell
echo     r  Run application using CBF variables
echo   rzr  Multi-Edit abstraction layer for running CBF files
echo     s  Check git status remotely, has TD parameter
echo    se  Internet search helper
echo   sln  Open a Visual Studio solution, has TD parameter
echo    sh  SSH
echo    sx  Use Sublime to edit a batch file in the CBF folder
echo    sf  Surf to websites
echo    sm  Sublime
echo   sql  MySQL/Database, including LDAP, related tasks
echo     t  Testing, experimenting and developing new batch file functions
echo    ty  Use the type command to view a nickname-specified file
echo    tf  Terraform
echo    tk  Taskkill
echo    tl  Tasklist
echo    td  Transform Directory
echo   tdf  Transform Directory where only the Cbf_filename is known
echo   tdp  Transform Directory to parent folder
echo    te  Batch file template used for creating new batch files
echo    un  URL nicknames dictionary layer of abstraction
echo     v  Vetted functions (Useful for copying-and-pasting)
echo    wp  Wordpad
echo     x  Remote double-click equivalent way to run a file

exit/b



:_