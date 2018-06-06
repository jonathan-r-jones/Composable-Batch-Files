:_

:s6

set fp=* Sencha.

rem fcd: Sep-27-2017

echo %fp%
echo.

cd c:\projects\netbeans\

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git --branch clean6.2 .\sencha

exit /b



:_

:m6

set fp=* Mercury.

rem fcd: Sep-27-2017

echo %fp%
echo.

cd c:\projects\netbeans\

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git --branch master .\mercury6

exit /b



:_

:ba

set fp=* 

rem fcd: May-15-2017

echo %fp%

cd mercury

cd

pause

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git --branch master .\batch_files

exit /b



:_

:mob

set fp=* Clone Mobility repository.

rem lu: Oct-23-2017

echo %fp%
echo.

cd c:\mercury

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/mobility.git --branch master .\mobility

exit /b



:_

:lat

:lwf

set fp=* Clone Latest WAR File.

rem lu: Oct-23-2017

echo %fp%

call td merc

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/latest-war-file.git ".\Latest War File"

exit /b



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

exit /b



:_

:sample

set fp=* Clone sample.

rem lu: Oct-23-2017

echo %fp%
echo.

echo git clone https://Jonathan17@bitbucket.org/nesmercuryteam/backups.git --branch master .\Backups

exit /b



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

exit /b



:_

:doc

set fp=* Clone the documentation repository.

rem lu: Dec-6-2017

echo %fp%

call td mr

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git .\documentation

call of mr

exit /b



:_

:md

set fp=* Maven dependencies.

rem lu: Jan-3-2018

echo %fp%

call td m2

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/maven-dependencies.git .\repository

exit /b



:_

:mdg

set fp=* Maven dependencies using the generic BitBucket account.

rem lu: Jan-3-2018

echo %fp%

call td m2
          
git clone https://mercury_devops@bitbucket.org/nesmercuryteam/maven-dependencies.git .\repository

exit /b



:_

:bowl

set fp=* Bowling repository.

rem lu: Jan-4-2018

echo %fp%

call td daa
          
git clone https://github.com/ardwalker/bowling-for-csharp.git .\bowling_in_cs

exit /b



:_

:bowl2

set fp=* Bowling repository.

rem lu: Jan-4-2018

echo %fp%

call td daa
          
git clone https://github.com/atuggle/BowlingGameKataCSharp.git .\bowl2

exit /b



:_

:xamarin

set fp=* Xamarin Dev Days.

rem lu: Jan-9-2018

echo %fp%

call td daa
          
git clone https://github.com/xamarin/dev-days-labs.git .\xamarin_dev_days

exit /b



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

exit /b



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

exit /b



:_

:research

set fp=* Clone research and development.

rem fud: Aug-22-2017

echo %fp%
echo.

rem 5. Research and development.
rem How does this HomeBrew statement work?
rem /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

exit /b



:_

:gt

set fp=* Make a clone for git testing.

rem fcd: May-15-2017

echo %fp%

git clone https://github.com/jonathan-r-jones/ForGitTesting.git --branch master .\git_testing

exit /b



:_

:fresh_pizza

set fp=* Fresh pizza code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/alexsorokoletov/NovaCodeCamp.PizzaRatings.git .\fresh_pizza

exit /b



:_

:fresh_marvel

set fp=* Fresh marvel code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/edsnider/marvel-xfdemo.git .\fresh_marvel

exit /b



:_

:appcenter

set fp=* AppCenter sample code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/Microsoft/appcenter-sampleapp-android.git .\appcenter_sample

exit /b



:_

:pizza

set fp=* Pizza code.

rem lu: Jan-9-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/jonathan-r-jones/NovaCodeCamp.PizzaRatings.git .\pizza

cd pizza

exit /b



:_

:tt

set fp=* Tick tock menu.

rem lu: Jan-18-2018

echo %fp%

call td it
echo.
          
git clone https://Jonathan17@bitbucket.org/Jonathan17/ticktockmenumaker.git .\TickTockMenuMaker

exit /b



:_

:cmddemo

set fp=Cmddemo

rem lu: Jan-18-2018

call td aa
echo.
          
set rn=https://github.com/BrendanPluralsight/cmd-demo.git

git clone %rn%

exit /b



:_

:xplug

set fp=Xamarin_Plugins

rem lu: Jan-18-2018

echo %fp%
set folder_name=%fp%

call td aa
echo.

call un %1

git clone %cbf_url% .\%folder_name%

exit /b


:_

:jmplug

set fp=James_Montemagno_Xamarin_Plugins

rem lu: Jan-31-2018

echo * %fp%

set folder_name=%fp%

call td aa

call un %1

git clone %cbf_url% .\%folder_name%

exit /b



:_

:batt

set fp=James_Montemagno_Battery_Plugin

rem lu: Jan-31-2018

echo * %fp%

set folder_name=%fp%

call td aa

call un %1

echo.

git clone %cbf_url% .\%folder_name%

exit /b
