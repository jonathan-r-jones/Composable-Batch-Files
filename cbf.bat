:_

@echo off



:_

set filep=* This file shows a list of available CBF files.



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

cls

echo.
echo * List of Composable Batch Files (CBF).
echo.
echo * For general help, see the Readme at the bottom of: 
echo. 
echo   https://github.com/jonathan-r-jones/Composable-Batch-Files
echo. 
echo * For help with a particular batch file, type: [Filename] /?
echo.
echo   File  Description
echo   __ _   ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  
echo   __)_  (__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)
echo  (____  ___)(______)(______)(______)(______)(______)(______)(______)(______)(______)(___
echo.
echo      a  AWS CLI
echo     an  Exclusively set the application for an alias
echo    ang  Angular-related tasks
echo     as  Windows file associations
echo      b  Shutdown windows
echo     bu  Back up using function routing
echo    buc  Back up current file to code quick backup folder.
echo      c  Clear screen and reset color
echo    cbf  Show this list of CBF batch files
echo   coco  Code Compare functions
echo     ch  Chef command line utility
echo    clc  Simple calculator
echo     cn  Git cloning, based entirely on the nickname parameter
echo    cng  Git cloning, generic version
echo    col  Shell window colors operations
echo   conf  Surf to Confluence websites
echo     cp  Copy files using function routing
echo   cpcf  Use file in the current folder to "save as" to a filename alias
echo   cpcp  Copy file in the current directory to nickname-specified path
echo   cpfc  Use filename alias to "save as" a file in the current folder
echo   cpff  Use filename alias 1 to "save as" filename alias 2
echo    cpp  Copies file from a cbf_path nickname
echo   cppp  Copy file from alias path param 1 to alias path param 2
echo   cpte  Copy te.bat to a new batch file
echo     cs  File contents search
echo    cst  File contents search with td parameter
echo     cu  Curl hooked up to the nicknames dictionary
echo    cur  Curl with atomic functions
echo     cv  Chef converge with a path parameter
echo      d  Dir for current folder
echo     dd  Dir filename extension searcher including subfolders
echo    ddc  Dir filename extension searcher current folder only
echo     de  Delete function-routing style batch file
echo   defn  Delete file base on passed in filename alias
echo   depn  Delete folder corresponding to CBF path alias parameter
echo   devu  Demo file for Dev Universiy event on Jan-9-2020
echo     dn  Dot Net Core
echo     do  Docker functions accessed via function routing.
echo     dr  Dir using function routing
echo     dt  Dir with a td parameter
echo      e  Uses mx.bat then me.bat to decipher which file to edit (Or exit command window)
echo     ed  Edit a file abstraction layer
echo    edr  Edit a relative path constucted filename
echo    edx  Edit a file
echo    ejf  Edit Jenkinsfile of an alias
echo     el  Edit log file of an alias
echo     es  Edit settings file of an alias
echo     ex  Run excel with or without a filename alias parameter
echo      f  Filename sapien. Use any application to open any file
echo     fe  Check for the existence of a file based on the passed in filename alias
echo     fn  Exclusively set the filename for an alias
echo     fs  Filenames search
echo    fsp  Perennial filenames search
echo    fst  Filenames search with a td parameter
echo     fx  Use dynamic CBF variables to execute a cbf variable in any application.
echo      g  Git
echo     gg  Git Gui helper Has TD parameter
echo     gh  Surf to GitHub websites
echo     gl  Glossary of terms used in CBF
echo     gr  Gradle
echo      h  Sencha
echo      i  Information of CBF variable value assignments
echo     je  Surf to Jenkins websites
echo     kc  Connect to servers
echo      j  Simulate a double-click. A remote double-click equivalent way to run an alias.
echo     ja  Application-centric way of running an application with an optional filename parameter
echo     ji  Jira operations
echo     jx  Use CBF dynamic variables in a double-click fashion.
echo      l  Google searcher
echo     lp  Load CBF_Path to the clipboard
echo    lpf  Load cbf_fn of passed in alias onto the clipboard
echo   lpfc  Load cbf_fn contents to the clipboard
echo  lpfwp  Load cbf_fn without path of passed in alias onto the clipboard
echo    lpx  Use a dynamic variable to copy a cbf variable to the clipboard
echo      m  Perform miscellaneous tasks using a function routing style
echo    mav  Maven
echo    mcd  Make and navigate (cd) to a folder
echo     me  Multi-Edit
echo     mv  Move files using function routing
echo   mvcp  Move file in the current directory to nickname-specified path
echo     mx  Use Multi-Edit to edit a batch file in the CBF folder
rem (!rfsp) (mov-2)
echo      n  Nicknames dictionary
echo    ney  An empty nicknames dictionary, useful for starting over
echo     nm  NPM
echo     no  Notepad
echo    net  Netstat
echo    nox  Use Notepad to edit a batch file in the CBF folder
echo     np  Notepad++
echo     ns  NSLookup wrapper
echo     nx  Use Notepad++ to edit a batch file in the CBF folder
echo     of  Open Folder, has TD parameter
echo   offn  Open folder where only the filename is known
echo    ofp  Transform directory to parent folder
echo      p  Add, commit and push Git changes, has TD parameter
echo     pg  Ping hooked up to the nicknames dictionary
echo     pl  Git pull, has TD parameter
echo     pn  Exclusively set the path for an alias
echo    pql  PostgreSQL (in development)
echo    png  Run cbf_png as a double-click filename
echo     ps  PowerShell
echo     qb  Quickly back up any registered file
echo    qfn  Query if a file exists based on its passed in alias
echo      r  Run application using CBF variables
echo    rzr  Multi-Edit abstraction layer for running CBF files
echo   rzrp  Multi-Edit abstraction layer for running CBF files, with a pause
echo      s  Check git status remotely, has TD parameter
echo   scpr  Secure Copy Protocol, function routing
echo   scpd  Secure Copy Protocol (download version)
echo scpd_c  Secure Copy Protocol (download version) consumer
echo   scpx  Secure Copy Protocol
echo scpx_c  Secure Copy Protocol consumer
echo     se  Internet search helper
echo     sf  Surf to websites
echo    sfn  Set cbf_fn based on an evaluated filename parameter
echo     sh  SSH
echo    sln  Open a Visual Studio solution, has TD parameter
echo     sm  Sublime
echo     sp  Super push, i.e. push all selected repositories
echo    spl  Super pull, i.e. pull all selected repositories
echo    sql  MySQL/Database, including LDAP, related tasks
echo     ss  Super status, that is status for all selected repositories
echo     sx  Use Sublime to edit a batch file in the CBF folder
echo      t  Testing, experimenting and developing new batch file functions
echo     td  Transform directory
echo    tdc  Transform directory to favorite child folder of alias
echo   tdfn  Transform directory where only the cbf_fn is known
echo    tdp  Transform directory to parent folder
echo    tdr  Transform directory by appending a relative path onto a base path
echo     te  Batch file template used for creating new batch files
echo     tf  Terraform
echo     tk  Taskkill
echo     tl  Tasklist
echo     ty  Type command for use on evaluated filename parameter
echo    typ  Use type command to view nickname-specified file and pipe output to a file.
echo    tyf  Reopen or see search results that have been piped to a file.
echo     un  URL nicknames dictionary layer of abstraction
echo      v  Vetted functions (Useful for copying-and-pasting)
echo     wp  Wordpad
echo    xfn  Filename-centric way to run an alias

exit/b



:_
