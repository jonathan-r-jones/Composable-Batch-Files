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
echo       a  AWS CLI
echo      an  Communicates that the intent is only to change the application for a passed in alias
echo     ans  Ansible-related tasks
echo     ang  Angular-related tasks
echo      ap  Application-centric way of running an application with an optional filename parameter
echo       b  Shutdown windows
echo      bu  Back up using function routing
echo     buc  Back up a file in the current folder to the code quick backup folder.
echo       c  Clear screen and reset color
echo     cbf  Show this list of CBF batch files
echo      cf  Execute the Confluence namesake DCV for the passed in alias.
echo      ch  Chef command line utility
echo     clc  Simple calculator
echo      cn  Git cloning, based entirely on the nickname parameter
echo     cng  Git cloning, generic version
echo    coco  Code Compare functions
echo     col  Shell window colors operations
echo      cp  Copy files using function routing
echo    cpcf  Use file in the current folder to "save as" to a filename alias
echo    cpcp  Copy file in the current directory to nickname-specified path
echo    cpfc  Use filename alias to "save as" a file in the current folder
echo    cpff  Use filename alias 1 to "save as" filename alias 2
echo     cpp  Copies file from a cbf-pt nickname
echo    cppp  Copy file from alias path param 1 to alias path param 2
echo    cpte  Copy te.bat to a new batch file
echo      cs  File contents search
echo     cst  File contents search with td parameter
echo      cu  Curl with atomic functions
echo     cuu  Basic Curl test of a URL
echo      cv  List or clear CBF variables.
echo       d  Dir for current folder
echo      dc  Double-click a filename, back office operation
echo      dd  Dir filename extension searcher including subfolders
echo     ddc  Dir filename extension searcher current folder only
echo      de  Multipurpose delete batch file
echo    defn  Delete file base on passed in filename alias
echo    depc  Delete the path contents of the passed in alias.
echo    depn  Delete folder corresponding to CBF path alias parameter
echo    devu  Demo file for Dev Universiy event on Jan-9-2020
echo      dh  Doskey /history. Display the previous 50 commands.
echo      dn  Dot Net Core
echo      do  Docker functions accessed via function routing.
echo      dr  Dir using function routing
echo      dt  Dir with a td parameter
echo       e  Uses mx.bat then me.bat to decipher which ASCII file to edit (Or exit command window)
echo      ea  Use Mutli-Edit to edit the Ansible Playbook of an alias.
echo      ed  Edit a file abstraction layer
echo     edr  Edit a relative path constucted filename
echo     edx  Edit file - back office operation.
echo      el  Edit log file of an alias
echo      es  Edit settings file of an alias
echo      ex  Run Excel with or without a filename alias parameter
echo    exdc  Use Multi-Edit to edit DCV ASCII files.
echo       f  Filename sapien. Use any application to open any file
echo      fa  Windows file associations
echo      fe  Check for the existence of a file based on the passed in filename alias
echo      fn  Communicates that the intent is only to change the filename for a passed in alias
echo      fs  Filenames search
echo     fsp  Perennial filenames search
echo     fst  Filenames search with a td parameter
echo      fx  Open any file with any application using a DCV.
echo     fxw  A wrapper around fx.bat.
echo       g  Git
echo      gg  Git Gui helper Has TD parameter
echo      gh  Execute the GitHub namesake DCV for the passed in alias.
echo      gl  Glossary of terms used in CBF
echo    gose  Google searcher
echo      gr  Gradle
echo       h  Sencha
echo       i  Information of CBF variable value assignments
echo       j  Simulate a double-click using default precedence operation or a DCV.
echo      je  Execute the Jenkins namesake DCV for the passed in alias.
echo      jf  Use Mutli-Edit to edit the Jenkinsfile of an alias.
echo      ji  Jira operations
echo      kc  Connect to servers
echo       l  Use a DCV to copy a cbf variable to the clipboard
echo      lp  Load cbf-pt to the clipboard
echo     lpf  Load cbf-fn of passed in alias onto the clipboard
echo    lpfc  Load cbf-fn contents to the clipboard
echo   lpfwp  Load cbf-fn without path of passed in alias onto the clipboard
echo       m  Perform miscellaneous tasks using a function routing style
echo     mav  Maven
echo     mcd  Make and navigate (cd) to a folder
echo      me  Multi-Edit
echo      mv  Move files using function routing
echo    mvcp  Move file in the current directory to nickname-specified path
echo      mx  Use Multi-Edit to edit a batch file in the CBF folder
rem  (!rfsp) (mov-2)
echo       n  Nicknames dictionary, a. k. a. the data layer
echo     ney  An empty nicknames dictionary, useful for starting over
echo      nm  NPM-related functions.
echo      no  Notepad
echo     net  Netstat
echo     nox  Use Notepad to edit a batch file in the CBF folder
echo      np  Notepad++
echo      ns  NSLookup wrapper
echo      nx  Use Notepad++ to edit a batch file in the CBF folder
echo      of  Open Folder, has TD parameter
echo    offn  Open folder where only the filename is known
echo     ofp  Transform directory to parent folder
echo       p  Add, commit and push Git changes, has TD parameter
echo      pg  Ping hooked up to the nicknames dictionary
echo      pl  Git pull, has TD parameter
echo      pn  Sets only the path for an alias.
echo     pql  PostgreSQL
echo     png  Run cbf-png as a double-click filename
echo      pr  Execute the pull requests namesake DCV for the passed in alias.
echo      ps  PowerShell
echo     ptm  Sets the path using a monogamous CBF variable that sets the path only.
echo     qfn  Query if a file exists based on its passed in alias
echo       r  Run application using CBF variables, mostly used in back office operations
echo      rl  Execute the releases namesake DCV for the passed in alias.
echo     rzr  Multi-Edit abstraction layer for running CBF files
echo    rzrp  Multi-Edit abstraction layer for running CBF files, with a pause
echo       s  Check git status remotely, has TD parameter
echo    scpd  SCP - download version
echo  scpd_c  SCPD consumer
echo    scpr  SCP - function routing version
echo    scpx  SCP wrapper
echo  scpx_c  SCPX consumer
echo scpx_c2  SCPX consumer 2 - for copying files to new servers
echo      se  Internet search helper
echo      sf  Surf to websites. A DCV is optional.
echo     sfn  Set cbf-fn based on an evaluated filename parameter
echo      sh  SSH
echo     sln  Open a Visual Studio solution, has TD parameter
echo      sm  Sublime
echo      sp  Super push, i.e. push all prewritten repositories
echo     spl  Super pull, i.e. pull all prewritten repositories
echo     sql  MySQL/Database, including LDAP, related tasks
echo      ss  Super status, that is status for all selected repositories
echo      sx  Use Sublime to edit a batch file in the CBF folder
echo       t  Testing, experimenting and developing new batch file functions
echo      td  Transform directory
echo     tdc  Transform directory to favorite child folder of alias
echo     tdp  Transform directory to parent folder
echo     tdr  Transform directory by appending a relative path onto a base path
echo     tdx  Open a folder using a DCV.
echo      te  Batch file template used for creating new batch files
echo      tf  Terraform
echo      tk  Taskkill
echo      tl  Tasklist
echo      ty  Type command for use on evaluated filename parameter
echo     tyi  Use type command to view calculus file in Internet Explorer.
echo     tyf  Reopen or see search results that have been piped to a file.
echo      un  Communicates that the intent is only to change the URL for a passed in alias
echo       v  Vetted functions (Useful for copying-and-pasting)
echo      wo  Run Word with or without a filename alias parameter
echo      wp  Wordpad
echo       x  Quickly back up and restore any registered file
echo     xfn  Filename-centric way to run an alias

exit/b



:_
