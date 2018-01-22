:_

@echo off



:_

set fp=* Add echo.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

rem Metadata

rem File Purpose: This batch file is intended to be used for cloning git repos.

rem fcd: Jan-17-2018



:_

:exit

set fp= * Exit.

rem echo.
rem echo %fp%

exit



:_

:exitb

rem set fp= * Exit batch file but not command window.

rem echo.
rem echo %fp%

exit /b



:_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

title Done! - . . . paused . . . Press any key to continue

pause

exit



:_

:exitpb

set fp= * Pause then exit the batch file but not the command window.

rem echo.
rem echo %fp%

pause

exit /b



:_

:help

set fp=* Perform Git Clone-related tasks.

rem fcd: Jan-17-2018

echo %fp%

echo.
echo Usage: cl [single parameter]

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo       xam_sam  Xamarin Forms Samples.

goto exitb



:_

:clon

:clone

set fp=* Clone.

echo %fp%
echo.
  
rem 1. Repository URL.
set origin_url=https://github.com/jonathan-r-jones/java_bouillabaisse.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git
set origin_url=https://github.com/bruderstein/NppTidy2.git
set origin_url=https://github.com/jamesmontemagno/MeetupManager.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git
set origin_url=https://github.com/jamesmontemagno/Hanselman.Forms.git
set origin_url=https://github.com/NASAWorldWind/WebWorldWind.git
set origin_url=https://github.com/Homebrew/brew.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mobility.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git
set origin_url=https://github.com/edsnider/marvel-xfdemo.git
set origin_url=https://github.com/jonathan-r-jones/ForGitTesting.git

rem 2. New folder path.
set new_folder_path=C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh
set new_folder_path=c:\aa
set new_folder_path=c:\mercury
set new_folder_path=c:\projects\netbeans
set new_folder_path=%aa%

rem 3. Folder name.
set folder_name=tirem
set folder_name=bouillabaisse
set folder_name=ForGitTesting2
set folder_name=ForGitTesting3
set folder_name=Batch_Files
set folder_name=MeetupManager
set folder_name=Documentation
set folder_name=HanselmanForms
set folder_name=WebWorldWind_June_2_2017
set folder_name=Homebrew_Jun_7_2017
set folder_name=s6_secondary_repo
set folder_name=Mobility
set folder_name=sencha
set folder_name=mercury6
set folder_name=Xamarin_Marvel_Demo
set folder_name=ForGitTesting

rem 4. Branch name.
set branch_name=clean6.2
set branch_name=master

rem 5. Execute.

cd /d %new_folder_path%

git clone %origin_url% --branch %branch_name% .\%folder_name%

goto exitb



:_

:s6

set fp=* Sencha.

rem fcd: Sep-27-2017

echo %fp%
echo.

cd c:\projects\netbeans\

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git --branch clean6.2 .\sencha

goto exitb



:_

:m6

set fp=* Mercury.

rem fcd: Sep-27-2017

echo %fp%
echo.

cd c:\projects\netbeans\

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git --branch master .\mercury6

goto exitb



:_

:ba

set fp=* 

rem fcd: May-15-2017

echo %fp%

cd mercury

cd

pause

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git --branch master .\batch_files

goto exitb



:_

:mob

set fp=* Clone Mobility repository.

rem lu: Oct-23-2017

echo %fp%
echo.

cd c:\mercury

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/mobility.git --branch master .\mobility

goto exitb



:_

:lat

:lwf

set fp=* Clone Latest WAR File.

rem lu: Oct-23-2017

echo %fp%

call td merc

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/latest-war-file.git ".\Latest War File"

goto exitb



:_

:bu

:bk

:bac

set fp=* Clone Backups.

rem lu: Oct-23-2017

echo %fp%
echo.

cd\Mercury

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/backups.git .\Backups

goto exitb



:_

:sample

set fp=* Clone sample.

rem lu: Oct-23-2017

echo %fp%
echo.

echo git clone https://Jonathan17@bitbucket.org/nesmercuryteam/backups.git --branch master .\Backups

goto exitb



:_

:scratch

set fp=* Clone repository from scatch.

rem lu: Oct-23-2017

echo %fp%

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/latest-war-file.git

rem cd latest

rem echo "# My project's README" >> README.md

rem git add README.md

rem git commit -m "Initial commit."

rem git push -u origin master

goto exitb



:_

:doc

set fp=* Clone the documentation repository.

rem lu: Dec-6-2017

echo %fp%

call td mr

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git .\documentation

call of mr

goto exitb



:_

:md

set fp=* Maven dependencies.

rem lu: Jan-3-2018

echo %fp%

call td m2

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/maven-dependencies.git .\repository

goto exitb



:_

:mdg

set fp=* Maven dependencies using the generic BitBucket account.

rem lu: Jan-3-2018

echo %fp%

call td m2
          
git clone https://mercury_devops@bitbucket.org/nesmercuryteam/maven-dependencies.git .\repository

goto exitb



:_

:bowl

set fp=* Bowling repository.

rem lu: Jan-4-2018

echo %fp%

call td daa
          
git clone https://github.com/ardwalker/bowling-for-csharp.git .\bowling_in_cs

goto exitb



:_

:bowl2

set fp=* Bowling repository.

rem lu: Jan-4-2018

echo %fp%

call td daa
          
git clone https://github.com/atuggle/BowlingGameKataCSharp.git .\bowl2

goto exitb



:_

:xamarin

set fp=* Xamarin Dev Days.

rem lu: Jan-9-2018

echo %fp%

call td daa
          
git clone https://github.com/xamarin/dev-days-labs.git .\xamarin_dev_days

goto exitb



:_

:clone_tirem

set fp=* Clone TIREM.

echo %fp%
  
set branch_name=master

set folder_name=tirem

set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/tirem.git

@echo on
git clone %origin_url% --branch %branch_name% .\%folder_name%
@echo off

goto exitb



:_

:templates

set fp=* Clone templates repository.

echo %fp%
  
rem 1. Repository URL.
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/templates.git

rem 2. Folder location.
set new_folder_path=c:\mercury

rem 3. Folder name.
set folder_name=templates

rem 4. Branch name.
set branch_name=master

@echo on

cd %new_folder_path%

git clone %origin_url% --branch %branch_name% .\%folder_name%

@echo off

goto exitb



:_

:research

set fp=* Clone research and development.

rem fud: Aug-22-2017

echo %fp%
echo.

rem 5. Research and development.
rem How does this HomeBrew statement work?
rem /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

goto exitb



:_

:gt

set fp=* Make a clone for git testing.

rem fcd: May-15-2017

echo %fp%

git clone https://github.com/jonathan-r-jones/ForGitTesting.git --branch master .\git_testing

goto exitb



:_

:xam_sam

set fp=* Xamarin Forms Samples.

rem lu: Jan-9-2018

echo %fp%

call td daa
          
git clone https://github.com/xamarin/xamarin-forms-samples.git .\xamarin_forms

goto exitb



:_

:fresh_pizza

set fp=* Fresh pizza code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/alexsorokoletov/NovaCodeCamp.PizzaRatings.git .\fresh_pizza

goto exitb



:_

:fresh_marvel

set fp=* Fresh marvel code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/edsnider/marvel-xfdemo.git .\fresh_marvel

goto exitb



:_

:appcenter

set fp=* AppCenter sample code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/Microsoft/appcenter-sampleapp-android.git .\appcenter_sample

goto exitb



:_

:pizza

set fp=* Pizza code.

rem lu: Jan-9-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/jonathan-r-jones/NovaCodeCamp.PizzaRatings.git .\pizza

cd pizza

goto exitb



:_

:tt

set fp=* Tick tock menu maker.

rem lu: Jan-18-2018

echo %fp%

call td it
echo.
          
git clone https://Jonathan17@bitbucket.org/Jonathan17/ticktockmenumaker.git .\TickTockMenuMaker

goto exitb



:_

:xplug

set fp=Xamarin_Plugins

rem lu: Jan-18-2018

echo %fp%
set folder_name=%fp%

call td aa
echo.
          
set rn=https://github.com/jamesmontemagno/Xamarin.Plugins.git

git clone %rn% .\%folder_name%

goto exitb



:_ (!rfsp) (mov-9)