:_

@echo off



:_

set filep=* Perform NPM-related tasks.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Nickname of command you wish to execute.

echo.
echo     Parameter  Description
echo -------------  -----------------------------------------------------
echo          init  Wizard that creates a package.json file.
echo        init_d  Wizard that creates package.json file with defaults.
echo       get_lic  Get default license setting.
echo          inst  Install a package and save it to package.json.
echo        list_g  Verbose list of my globally installed packages.
echo           nhn  npm help npm. Involved help.
echo           nhs  NPM help for a specific command.
echo          nhss  NPM help-search for a specific command.
echo          prun  Prune extraneous packages.
echo          repo  Go to the GitHub repository for a given package.
echo       set_lic  Set default license to MIT.
echo       unin_gd  Uninstall global package and remove dependency note.
echo      up_npm_1  Install latest stable version of NPM. Run as ADMIN.
echo      up_npm_2  Update NPM.
echo        update  Update all dependencies to the latest version.
echo          vers  Check NPM's version.

exit/b



:_ Begin body. (!bb)



:_

:star

:start

set fp=* Run start script. Rith used this on Dec-5-2019 instead of "ng serve".

rem lu: Dec-5-2019

echo.
echo %fp%
echo.

npm start

exit/b



:_

:test

set fp=* Run tests.

rem lu: Apr-24-2018

echo.
echo %fp%

npm test

exit/b



:_+ NPM Help



::_

:nhn

set fp=* Involved help.

rem lu: Apr-24-2018

echo.
echo %fp%

npm help npm

exit/b



::_

:nhs

set fp=* NPM help for a specific command.

rem lu: Apr-24-2018

echo.
echo.
echo %fp%

npm help %2

exit/b



::_

:nhss

set fp=* NPM help-search for a specific command.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm help-search %2

exit/b



:_+ Inits



::_

:init

set fp=* Automated wizard that walks you through creating a package.json file.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm init

exit/b



::_

:init_d

set fp=* Automated wizard that walks you through creating a package.json file with defaults.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm init -y

exit/b



:_+ Settings



::_

:set_lic

set fp=* Set default license to MIT.

rem lu: Apr-24-2018

echo.
echo %fp%

npm set init-license 'MIT'

exit/b



::_

:get_lic

set fp=* Get default license setting.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm get init-license

exit/b



:_+ Listing



::_

:list_g

set fp=* Verbose list of my globally installed packages.

rem lu: Apr-24-2018

echo.
echo %fp%

npm list -g --depth 0 --long true

exit/b



::_

:list

set fp=* List of installed packages.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm list --long true

exit/b



::_

:list_my

set fp=* List of installed packages that only I have installed. As opposed to the hierarchy of what those packages have installed.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm list --depth 0

exit/b



::_

:list_all

set fp=* List of globally installed packages.

rem lu: Apr-24-2018

echo.
echo %fp%

npm list --global true

exit/b



::_

:my_g_json_list

set fp=* Verbose list of my globally installed packages in JSON format.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm list --global true --depth 0 --long true --json true

exit/b



::_

:my_g_json_dlist

set fp=* Verbose list of my globally installed packages in JSON format for dev dependencies only.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm list --global true --depth 0 --long true --dev true

exit/b



:_+ Uninstalling



::_

:unin_s

set fp=* Uninstall "%2" local package and remove dependency section in the package.json file.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm uninstall %2 --save

exit/b



::_

:unin_gd

set fp=* Uninstall "%2" global package and remove dependency section in the package.json file.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm uninstall %2 -g --save

exit/b



::_

:unin_g

set fp=* Uninstall "%2" global package.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm uninstall %2 -g

exit/b



:_

:prun

set fp=* Prune extraneous packages, that is, those that are not in the package.json file.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm prune

exit/b



:_

:repo

set fp=* Go to the GitHub repository for a given package.

rem lu: Apr-24-2018

echo.
echo %fp%

npm repo %2

exit/b



:_

:add

set fp=* Add user which is similar to Git's author stuff.

rem lu: Apr-25-2018

echo.
echo %fp%

echo.
npm adduser

exit/b



:_+ Versioning



::_

:ver

:vers

set fp=* Check NPM's version.

rem lu: Sep-12-2018

echo.
echo %fp%

echo.
npm --version

exit/b



::_

:lver

:lvers

:lovg_ver

set fp=* Check NPM's long version.

rem lu: Sep-12-2018

echo.
echo %fp%

echo.
npm version

exit/b



::_

:patch

set fp=* Automatically increment the patch version number.

rem lu: Apr-25-2018

echo.
echo %fp%

npm version patch

exit/b



::_

:minor

set fp=* Automatically increment the minor version number.

rem lu: Apr-25-2018

echo.
echo %fp%

npm version minor

exit/b



::_

:major

set fp=* Automatically increment the major version number.

rem lu: Apr-25-2018

echo.
echo %fp%

npm version major

exit/b



:_+ Publishing



::_

:pub

set fp=* Publish project to NPM.

rem lu: Apr-25-2018

echo.
echo %fp%

echo.
npm publish

exit/b



::_

:pub_beta

set fp=* Publish project to NPM in a beta release.

rem lu: Apr-25-2018

echo.
echo %fp%

echo.
npm publish --tag beta

exit/b



:_+ Infos



::_

:info

set fp=* Information about the current repository.

rem lu: Apr-25-2018

echo.
echo %fp%

npm info

exit/b



::_

:info_n

set fp=* Information about a named repository.

rem lu: Apr-25-2018

echo.
echo %fp%

npm info %2

exit/b



:_

:bi

set fp=* Batch install DutchTreat packages.

rem lu: Sep-18-2018

echo.
echo %fp%

call %0 inst bootstrap
call %0 inst jquery
call %0 inst jquery-validation
call %0 inst jquery-validation-unobtrusive
call %0 inst font-awesome

exit/b



:_+ Installing



::_

:inst

:install

set fp=* Install any dependencies listed in package.json.

rem lu: Feb-11-2019

echo.
echo %fp%
echo.

npm install

rem If you have an issue with install or update, you may need to delete the node_modules ^
subfolder.

exit/b



::_

:inst_s

set fp=* Install third party package and save setting in the package.json file.

rem lu: Sep-12-2018

echo.
echo %fp%

if not exist package.json (
  echo.
  echo * Error: The file package.json does not exist in the current folder.
  exit/b
)

echo.
npm install %2

exit/b



::_

:inst_g

set fp=* Globally install a package so that it works everywhere on the command line.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm i %2 -g

rem npm install -g %2

rem Examples:
rem npm install -g cordova
rem npm install -g ionic
rem npm install -g jspm
rem npm install -g taco-cli
rem npm install -g typings

rem The equivalent command for Mac would be: sudo npm -install -g %2

exit/b



::_

:inst_sd

set fp=* Install package and save setting in the development section of the package.json file.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm install %2 --save--dev

exit/b



::_

:inst_gh

set fp=* Install a package using its GitHub URL.

rem lu: Apr-24-2018

echo.
echo %fp%

call n %2

echo.
npm i %cbf_url%

exit/b



::_

:inst_svh

set fp=* Install a specific version of a package and HOLD at this version.

set fp=%fp% NPM will not upgrade automically in this case.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm i underscore@1.8.2 --save --save-exact

exit/b



::_

:inst_sv

set fp=* Install a specific version of a package.

set fp=%fp% Given this example, this will install the latest 1.8 version.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.

rem For example: npm i underscore@1.7 --save

npm i %2 --save

exit/b



::_

:iac

set fp=* Install Angular client.

rem lu: Feb-11-2019

echo.
echo %fp%

echo.
npm install -g @angular/cli

exit/b



::_

:npmh

set fp=* NPM install command for Sencha on Windows.

rem lu: Mar-1-2018

echo %fp%
echo.

npm install -g sencha

exit/b



::_

:npmc

set fp=* NPM install command for Sencha on Windows.

rem lu: Mar-1-2018

echo.
echo %fp%

npm install -g sencha-cmd

exit/b



:_+ Updating NPM. (skw upgrading, upgrade)



::_

:up_npm_1

set fp=* Install latest stable version of NPM. Be sure to run as ADMINISTRATOR.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm i npm@latest -g

exit/b



::_

:up_npm_2

set fp=* Update NPM itself.

rem lu: Sep-12-2018

echo.
echo %fp%

echo.
echo * Before the update version number.

call %0 ver

echo.
call npm install -g npm

echo.
echo * After the update version number.

call %0 ver

echo.
echo * If the version numbers are the same, no update was actually done right?

exit/b



::_

:update

set fp=* Update all dependencies to the latest version.

rem lu: Aug-12-2019

echo.
echo %fp%

echo.
npm update

exit/b



::_

:update_s

set fp=* Update all dependencies to the latest version.

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm update --save

exit/b



::_

:update_sp

set fp=* Update a single package dependency, in this case "%2".

rem lu: Apr-24-2018

echo.
echo %fp%

echo.
npm update %2

exit/b



:_ (!rfsp) (mov-6)