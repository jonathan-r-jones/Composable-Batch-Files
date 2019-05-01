::_

:old_6

set fp=* Old server 6.

echo.
echo %fp%

set cbf_root=10.168.78.117

set cbf_instance_id=i-01a13b63f31893af1

set cbf_ip=%cbf_root%

set cbf_url=http://%cbf_root%

exit/b



::_

:old_5

set fp=* FQT server.

rem lu: Mar-28-2019

echo.
echo %fp%

set cbf_root=10.168.78.78

set cbf_instance_id=i-0e2daf1a8544f23d9

set cbf_ip=%cbf_root%

set cbf_url=http://%cbf_root%

exit/b



::_

:4_old2

set fp=* Old FQT server.

rem lu: Apr-1-2019

echo.
echo %fp%

set cbf_root=10.168.78.112

set cbf_instance_id=i-0553653ad5d7bc6d5

set cbf_ip=%cbf_root%

set cbf_url=http://%cbf_root%

exit/b



::_

:4_old

set fp=* FQT server.

rem lu: Feb-25-2019

echo.
echo %fp%

set cbf_root=10.168.78.118

set cbf_instance_id=i-0553653ad5d7bc6d5

set cbf_ip=%cbf_root%

set cbf_url=http://%cbf_root%

exit/b



::_

:old_sr7

set fp=* FQT server.

rem lu: Mar-28-2019

echo.
echo %fp%

set cbf_root=10.168.78.48

set cbf_instance_id=i-0fccffe4a93be539d

set cbf_ip=%cbf_root%

set cbf_url=http://%cbf_root%

exit/b



:_

:h

:help

echo.
echo %filep%

echo.
echo Last Updated: Jan-25-2019

echo.
echo File purpose: SurF localhost.

echo.
echo Usage: %0 [space separated parameter(s)]

echo.
echo Parameter 1: Alias that point to a cbf_port_number.

echo.
echo Parameter 2 (Optional): Browser (Application Nickname), which is not necessary if you wish to use the non-default browser.

exit/b



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem ******* (!rfcea, !rfsp) (mov4)



:_

set fp=* Set URL.

set cbf_application=
set cbf_url=

set cbf_url=http://localhost:%cbf_port_number%

set cbf_parameter=%cbf_url%

goto set_browser



:_

:set_browser

set fp=* Set browser.

if not "%cbf_application%" == "" goto main_function

if not "%~2" == "" goto override_default_browser

set cbf_application=%cbf_default_browser%

goto main_function



:_

:use_current_cbf_lh

set fp=* Use current CBF_URL.

echo.
echo %fp%

set cbf_parameter=%cbf_lh%



:_

:override_default_browser

set fp=* Override default browser.

echo.
echo %fp%

call an %2



:_

:main_function

echo.
set fp=* Surf localhost.

echo %fp%

rem lu: Jan-25-2019

call r

exit/b
:_

:is_working_tree_clean

set fp=* Is working tree clean?

rem lu: Mar-28-2019

rem echo.
rem echo %fp%

call td %1>nul

call s | find /i "working tree clean">nul
rem qq-1

set current_folder=%cd%

if %errorlevel% == 1 (
  echo.
  echo * Warning: Dirty tree at %current_folder%.
  exit/b 1
)


exit/b



:_

set fp=4. * Test block 2. Fall-through style.

echo.
echo %fp%
echo.

echo hey

m exit



:_

qq-1
:

set fp=* Archive test.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.

rem qq-1

exit/b



:_

:s6

set fp=* Sencha.

rem fcd: Sep-27-2017

echo %fp%
echo.

cd c:\projects\netbeans\

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git --branch clean6.2 .\sencha

exit/b



:_

:m6

set fp=* Mercury.

rem fcd: Sep-27-2017

echo %fp%
echo.

cd c:\projects\netbeans\

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git --branch master .\mercury6

exit/b



:_

:ba

set fp=* 

rem fcd: May-15-2017

echo %fp%

cd mercury

cd

pause

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git --branch master .\batch_files

exit/b



:_

:mob

set fp=* Clone Mobility repository.

rem lu: Oct-23-2017

echo %fp%
echo.

cd c:\mercury

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/mobility.git --branch master .\mobility

exit/b



:_

:lat

:lwf

set fp=* Clone Latest WAR File.

rem lu: Oct-23-2017

echo %fp%

call td merc

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/latest-war-file.git ".\Latest War File"

exit/b



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

exit/b



:_

:sample

set fp=* Clone sample.

rem lu: Oct-23-2017

echo %fp%
echo.

echo git clone https://Jonathan17@bitbucket.org/nesmercuryteam/backups.git --branch master .\Backups

exit/b



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

exit/b



:_

:doc

set fp=* Clone the documentation repository.

rem lu: Dec-6-2017

echo %fp%

call td mr

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git .\documentation

call of mr

exit/b



:_

:md

set fp=* Maven dependencies.

rem lu: Jan-3-2018

echo %fp%

call td m2

git clone https://Jonathan17@bitbucket.org/nesmercuryteam/maven-dependencies.git .\repository

exit/b



:_

:mdg

set fp=* Maven dependencies using the generic BitBucket account.

rem lu: Jan-3-2018

echo %fp%

call td m2
          
git clone https://mercury_devops@bitbucket.org/nesmercuryteam/maven-dependencies.git .\repository

exit/b



:_

:bowl

set fp=* Bowling repository.

rem lu: Jan-4-2018

echo %fp%

call td daa
          
git clone https://github.com/ardwalker/bowling-for-csharp.git .\bowling_in_cs

exit/b



:_

:bowl2

set fp=* Bowling repository.

rem lu: Jan-4-2018

echo %fp%

call td daa
          
git clone https://github.com/atuggle/BowlingGameKataCSharp.git .\bowl2

exit/b



:_

:xamarin

set fp=* Xamarin Dev Days.

rem lu: Jan-9-2018

echo %fp%

call td daa
          
git clone https://github.com/xamarin/dev-days-labs.git .\xamarin_dev_days

exit/b



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

exit/b



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

exit/b



:_

:research

set fp=* Clone research and development.

rem fud: Aug-22-2017

echo %fp%
echo.

rem 5. Research and development.
rem How does this HomeBrew statement work?
rem /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

exit/b



:_

:gt

set fp=* Make a clone for git testing.

rem fcd: May-15-2017

echo %fp%

git clone https://github.com/jonathan-r-jones/ForGitTesting.git --branch master .\git_testing

exit/b



:_

:fresh_pizza

set fp=* Fresh pizza code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/alexsorokoletov/NovaCodeCamp.PizzaRatings.git .\fresh_pizza

exit/b



:_

:fresh_marvel

set fp=* Fresh marvel code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/edsnider/marvel-xfdemo.git .\fresh_marvel

exit/b



:_

:appcenter

set fp=* AppCenter sample code.

rem lu: Jan-18-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/Microsoft/appcenter-sampleapp-android.git .\appcenter_sample

exit/b



:_

:pizza

set fp=* Pizza code.

rem lu: Jan-9-2018

echo %fp%

call td daa
echo.
          
git clone https://github.com/jonathan-r-jones/NovaCodeCamp.PizzaRatings.git .\pizza

cd pizza

exit/b



:_

:tt

set fp=* Tick tock menu.

rem lu: Jan-18-2018

echo %fp%

call td it
echo.
          
git clone https://Jonathan17@bitbucket.org/Jonathan17/ticktockmenumaker.git .\TickTockMenuMaker

exit/b



:_

:cmddemo

set fp=Cmddemo

rem lu: Jan-18-2018

call td aa
echo.
          
set rn=https://github.com/BrendanPluralsight/cmd-demo.git

git clone %rn%

exit/b



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

exit/b


:_

:jmplug

set fp=James_Montemagno_Xamarin_Plugins

rem lu: Jan-31-2018

echo * %fp%

set folder_name=%fp%

call td aa

call un %1

git clone %cbf_url% .\%folder_name%

exit/b



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

exit/b



::_

:exitb

set fp= * Exit batch file but not command window.

exit/b



:_

:exitb

set fp= * Exit batch file but not command window.

rem echo.
rem echo %fp%

exit/b



:_

:

set fp=* test

rem lu: Jul-25-2018

echo %fp%

set cbf_path=%cbf_default_repository_folder%\

set cbf_url=

exit/b