:_

@echo off



:_

set filep=This file shows a list of available CBF files.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

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
echo  ----  ----------------------------------------------------------------------------------
echo     a  AWS CLI
echo    an  Application nickname dictionary layer of abstraction
echo   ang  Angular-related tasks
echo    as  Windows file associations
echo     b  Shutdown windows
echo   brp  Build relative path
echo  brfn  Build relative filename
echo     c  Clear screen and reset color
echo   cbf  Show this list of CBF batch files
echo    cc  Code Compare preloaded with j1.txt and j2.txt
echo  ccff  Code Compare with aliases or filenames
echo    ch  Chef command line utility
echo   clc  Simple calculator
echo    cn  Git cloning, based entirely on the nickname parameter
echo   cng  Git cloning, generic version
echo   col  Shell window colors operations
echo    cp  Copy CBF_Path to the clipboard
echo   cpf  Copy CBF_Filename contents to the clipboard
echo    cs  File contents search
echo   cst  File contents search with td parameter
echo    cu  Curl hooked up to the nicknames dictionary
echo   cur  Curl with composite functions
echo    cv  Chef converge with a path parameter
echo  cycf  Use file in the current folder to "save as" to a filename alias
echo  cycp  Copy file in the current directory to nickname-specified path
echo  cyfc  Use filename alias to "save as" a file in the current folder
echo  cyff  Copy file from alias filename parm 1 to alias filename param 2
echo   cyp  Copies file from a cbf_path nickname
echo  cypp  Copy file from alias path param 1 to alias path param 2
echo  cysf  Copy files using static formulas
echo  cyte  Copy te.bat to a new batch file
echo     d  Dir for current folder
echo    dd  Dir filename extension searcher including subfolders
echo   ddc  Dir filename extension searcher current folder only
echo    dr  Dir remote searcher
echo    dt  Dir with a td parameter
echo  defn  Delete file base on passed in filename alias
echo  depn  Delete folder corresponding to CBF path alias parameter
echo  desf  Delete using static formulas
echo    dn  Dot Net Core
echo     e  Uses mx.bat then me.bat to decipher which file to edit
echo   edr  Edit a relative-path constucted filename
echo   ejf  Edit Jenkinsfile of an alias
echo    el  Edit log file of an alias
echo    es  Edit settings file of an alias
echo    eg  Edit a file by gluing a relative path onto a base path
echo    ed  Edit a file abstraction layer
echo   edx  Edit a file (Emulated Surf)
echo    ex  Exit command window
echo     f  Use default application to open a file based on its alias and filename extension.
echo    fe  Check for the existence of a file based on the passed in filename alias
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
echo    ji  Jira operations
echo    kn  Knife, a Chef command line utility
echo     l  Google searcher
echo     m  Perform miscellaneous tasks
echo   mcd  Make and navigate (cd) to a folder
echo    me  Multi-Edit
echo   mav  Maven
echo    mv  Move files using composite functions
echo  mvcp  Move file in the current directory to nickname-specified path
echo    mx  Use Multi-Edit to edit a batch file in the CBF folder
rem (!rfsp) (mov-2)
echo     n  Nicknames dictionary
echo   ney  An empty nicknames dictionary, useful for starting over
echo    nm  NPM
echo    no  Notepad
echo   net  Netstat
echo   nox  Use Notepad to edit a batch file in the CBF folder
echo    np  Notepad++
echo    ns  NSLookup wrapper
echo    nx  Use Notepad++ to edit a batch file in the CBF folder
echo    of  Open Folder, has TD parameter
echo  offn  Open folder where only the filename is known.
echo   ofp  Transform directory to parent folder
echo     p  Add, commit and push Git changes, has TD parameter
echo    pl  Git pull, has TD parameter
echo    pg  Ping hooked up to the nicknames dictionary
echo   pql  PostgreSQL (in development)
echo    ps  PowerShell
echo     r  Run application using CBF variables
echo   rzr  Multi-Edit abstraction layer for running CBF files
echo  rzrp  Multi-Edit abstraction layer for running CBF files, with a pause
echo     s  Check git status remotely, has TD parameter
echo  scpp  Secure Copy Protocol
echo    se  Internet search helper
echo    sf  Surf to websites
echo sfgit  Surf to GitHub websites
echo  sfje  Surf to Jenkins websites
echo    sh  SSH
echo   sln  Open a Visual Studio solution, has TD parameter
echo    sm  Sublime
echo    sp  Super push, i.e. push all selected repositories
echo   spl  Super pull, i.e. pull all selected repositories
echo   sql  MySQL/Database, including LDAP, related tasks
echo    ss  Super status, that is status for all selected repositories
echo    sx  Use Sublime to edit a batch file in the CBF folder
echo     t  Testing, experimenting and developing new batch file functions
echo    td  Transform directory
echo   tdc  Transform directory to favorite child folder of alias
echo  tdfn  Transform directory where only the Cbf_filename is known
echo   tdg  Transform directory by gluing a relative path onto a base path
echo   tdp  Transform directory to parent folder
echo   tdr  Transform directory by appending a relative path onto a base path.
echo    te  Batch file template used for creating new batch files
echo    tf  Terraform
echo    tk  Taskkill
echo    tl  Tasklist
echo    ty  Type command to view nickname-specified file
echo    un  URL nicknames dictionary layer of abstraction
echo     v  Vetted functions (Useful for copying-and-pasting)
echo    wp  Wordpad
echo     x  Remote double-click equivalent way to run an alias
echo    xa  Application-centric way of running an application with an optional filename parameter.
echo   xac  Execute an application alias with a filename in the current folder
echo   xaf  Execute an application alias with a filename alias
echo   xfn  Filename-centric way to run an alias

exit/b



:_