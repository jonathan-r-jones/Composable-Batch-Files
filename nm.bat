:_

@echo off



:_

set filep=* Perform NPM-related tasks.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route help callers.

if "%~1" == "" goto install

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help



:_

set fp=* Main function.

goto %1

rem (!rfsp) (mov-2)

m exitb



:_

:h

:help

echo Filename stands for: NPM stuff.

echo.
echo Last Updated: Feb-6-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Nickname of command you wish to execute.

m exitb



:_

:installd

set fp=* Install default package.

rem lu: Apr-24-2018

echo %fp%
echo.

npm install

m exitb



:_

:star

:start

set fp=* Run start script.

rem lu: Apr-24-2018

echo %fp%
echo.

npm start

m exitb



:_

:test

set fp=* Run tests.

rem lu: Apr-24-2018

echo %fp%
echo.

npm test

m exitb



:_

:npmhelp

set fp=* Run tests.

rem lu: Apr-24-2018

echo %fp%

npm -h

m exitb



:_

:nhs

set fp=* NPM help for a specific command.

rem lu: Apr-24-2018

echo %fp%

npm help %2

m exitb



:_

:nhss

set fp=* NPM help-search for a specific command.

rem lu: Apr-24-2018

echo %fp%

echo.
npm help-search %2

m exitb



:_

:init

set fp=* Automated wizard that walks you through creating a package.json file.

rem lu: Apr-24-2018

echo %fp%

echo.
npm init

m exitb



:_

:initd

set fp=* Automated wizard that walks you through creating a package.json file with defaults.

rem lu: Apr-24-2018

echo %fp%

echo.
npm init -y

m exitb



:_

:lic

set fp=* Set default license to MIT.

rem lu: Apr-24-2018

echo %fp%

npm set init-license 'MIT'

m exitb



:_

:licg

set fp=* Get default license setting.

rem lu: Apr-24-2018

echo %fp%

echo.
npm get init-license

m exitb



:_+ Listing



::_

:list

set fp=* List of installed packages.

rem lu: Apr-24-2018

echo %fp%

echo.
npm list --long true

m exitb



::_

:my_list

set fp=* List of installed packages that only I have installed. As opposed to the hierarchy of what those packages have installed.

rem lu: Apr-24-2018

echo %fp%

echo.
npm list --depth 0

m exitb



:_

:all_glist

set fp=* List of globally installed packages.

rem lu: Apr-24-2018

echo %fp%

npm list --global true

m exitb



::_

:list_g

set fp=* Verbose list of my globally installed packages.

rem lu: Apr-24-2018

echo %fp%

npm list -g --depth 0 --long true

m exitb



::_

:my_g_json_list

set fp=* Verbose list of my globally installed packages in JSON format.

rem lu: Apr-24-2018

echo %fp%

echo.
npm list --global true --depth 0 --long true --json true

m exitb



::_

:my_g_json_dlist

set fp=* Verbose list of my globally installed packages in JSON format for dev dependencies only.

rem lu: Apr-24-2018

echo %fp%

echo.
npm list --global true --depth 0 --long true --dev true

m exitb



:_+ Installing



::_

:i

:inst

set fp=* Install third party package.

rem lu: Apr-24-2018

echo %fp%

echo.
npm install %2

m exitb



::_

:inst_gh

set fp=* Install a package using its GitHub URL.

rem lu: Apr-24-2018

echo %fp%

call n %2

echo.
npm i %cbf_url%

m exitb



::_

:inst_d

set fp=* Install third party package and save setting in the package.json file.

rem lu: Apr-24-2018

echo %fp%

echo.
npm install %2 --save

m exitb



_:_

:inst_ds

set fp=* Install package and save setting in the development section of the package.json file.

rem lu: Apr-24-2018

echo %fp%

echo.
npm install %2 --save--dev

m exitb



::_

::inst_g

set fp=* Globally install a package so that it works everywhere on the command line.

rem lu: Apr-24-2018

echo %fp%

echo.
npm i gulp -g

m exitb



::_

:inst_sv

set fp=* Install a specific version of a package. Given this example, this will install the latest 1.8 version.

rem lu: Apr-24-2018

echo %fp%

echo.
rem npm i underscore@1.7 --save
npm i %2 --save

m exitb



::_

:inst_svh

set fp=* Install a specific version of a package and HOLD at this version. NPM will not upgrade automically in this case.

rem lu: Apr-24-2018

echo %fp%

echo.
npm i underscore@1.8.2 --save --save-exact

m exitb



:_+ Updating



::_

:update

set fp=* Update all dependencies to the latest version.

rem lu: Apr-24-2018

echo %fp%

echo.
npm update --save

m exitb



::_

:update_sp

set fp=* Update a single package dependency, in this case "%2".

rem lu: Apr-24-2018

echo %fp%

echo.
npm update %2

m exitb



:_+ Uninstalling



::_

:unin_s

set fp=* Uninstall "%2" local package and remove dependency section in the package.json file.

rem lu: Apr-24-2018

echo %fp%

echo.
npm uninstall %2 --save

m exitb



::_

:unin_gd

set fp=* Uninstall "%2" global package and remove dependency section in the package.json file.

rem lu: Apr-24-2018

echo %fp%

echo.
npm uninstall %2 -g --save

m exitb



::_

:unin_g

set fp=* Uninstall "%2" global package.

rem lu: Apr-24-2018

echo %fp%

echo.
npm uninstall %2 -g

m exitb



:_

:prun

set fp=* Prune extraneous packages, that is, those that are not in the package.json file.

rem lu: Apr-24-2018

echo %fp%

echo.
npm prune

m exitb



:_