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

rem lu: Mar-6-2020

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Batch file style: Multipurpose

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



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



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



:_

:run_tests

:test

set fp=* Run tests. (skw run unit tests)

echo.
echo %fp%

npm test

exit/b


>< >< Footnote:

Here is the result of my first unit test run in deli on Mar-6-2020.

 PASS  src/test/javascript/spec/app/core/user/account.service.spec.ts (42.608s, 557 MB heap size)
 PASS  src/test/javascript/spec/app/admin/audits/audits.component.spec.ts (46.519s, 211 MB heap size)
 PASS  src/test/javascript/spec/app/shared/alert/alert-error.component.spec.ts (7.466s, 581 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book-loan/book-loan.service.spec.ts (5.153s, 239 MB heap size)
 PASS  src/test/javascript/spec/app/account/register/register.component.spec.ts (590 MB heap size)
 PASS  src/test/javascript/spec/app/layouts/main/main.component.spec.ts (249 MB heap size)
 PASS  src/test/javascript/spec/app/shared/login/login.component.spec.ts (606 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book/book.service.spec.ts (265 MB heap size)
 PASS  src/test/javascript/spec/app/account/password-reset/finish/password-reset-finish.component.spec.ts (620 MB heap size)
 PASS  src/test/javascript/spec/app/admin/user-management/user-management-update.component.spec.ts (281 MB heap size)
 PASS  src/test/javascript/spec/app/entities/catalog-entry/catalog-entry.service.spec.ts (641 MB heap size)
 PASS  src/test/javascript/spec/app/account/password/password.component.spec.ts (301 MB heap size)
 PASS  src/test/javascript/spec/app/admin/user-management/user-management.component.spec.ts (654 MB heap size)
 PASS  src/test/javascript/spec/app/account/settings/settings.component.spec.ts (315 MB heap size)
 PASS  src/test/javascript/spec/app/admin/configuration/configuration.service.spec.ts (320 MB heap size)
 PASS  src/test/javascript/spec/app/admin/logs/logs.component.spec.ts (262 MB heap size)
 PASS  src/test/javascript/spec/app/core/user/user.service.spec.ts (339 MB heap size)
 PASS  src/test/javascript/spec/app/entities/catalog-entry/catalog-entry-delete-dialog.component.spec.ts (285 MB heap size)
 PASS  src/test/javascript/spec/app/admin/audits/audits.service.spec.ts (350 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book-loan/book-loan-delete-dialog.component.spec.ts (289 MB heap size)
 PASS  src/test/javascript/spec/app/admin/health/health.component.spec.ts (360 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book/book-delete-dialog.component.spec.ts (303 MB heap size)
 PASS  src/test/javascript/spec/app/account/password-reset/init/password-reset-init.component.spec.ts (376 MB heap size)
 PASS  src/test/javascript/spec/app/entities/catalog-entry/catalog-entry-update.component.spec.ts (321 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book-loan/book-loan-update.component.spec.ts (230 MB heap size)
 PASS  src/test/javascript/spec/app/admin/configuration/configuration.component.spec.ts (329 MB heap size)
 PASS  src/test/javascript/spec/app/account/activate/activate.component.spec.ts (247 MB heap size)
 PASS  src/test/javascript/spec/app/admin/user-management/user-management-delete-dialog.component.spec.ts (345 MB heap size)
 PASS  src/test/javascript/spec/app/admin/metrics/metrics.service.spec.ts (357 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book/book-update.component.spec.ts (263 MB heap size)
 PASS  src/test/javascript/spec/app/admin/user-management/user-management-detail.component.spec.ts (269 MB heap size)
 PASS  src/test/javascript/spec/app/account/password/password-strength-bar.component.spec.ts (367 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book-loan/book-loan.component.spec.ts (379 MB heap size)
 PASS  src/test/javascript/spec/app/entities/catalog-entry/catalog-entry.component.spec.ts (281 MB heap size)
 PASS  src/test/javascript/spec/app/admin/metrics/metrics.component.spec.ts (386 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book/book.component.spec.ts (293 MB heap size)
 PASS  src/test/javascript/spec/app/admin/logs/logs.service.spec.ts (407 MB heap size)
 PASS  src/test/javascript/spec/app/entities/catalog-entry/catalog-entry-detail.component.spec.ts (301 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book-loan/book-loan-detail.component.spec.ts (412 MB heap size)
 PASS  src/test/javascript/spec/app/entities/book/book-detail.component.spec.ts (319 MB heap size)
-----------------------------------------------|----------|----------|----------|----------|-------------------|
File                                           |  % Stmts | % Branch |  % Funcs |  % Lines | Uncovered Line #s |
-----------------------------------------------|----------|----------|----------|----------|-------------------|
All files                                      |    84.67 |    57.99 |    69.34 |    83.49 |                   |
 app                                           |      100 |      100 |      100 |      100 |                   |
  app.constants.ts                             |      100 |      100 |      100 |      100 |                   |
 app/account/activate                          |    92.59 |      100 |       75 |       90 |                   |
  activate.component.html                      |      100 |      100 |      100 |      100 |                   |
  activate.component.ts                        |    94.44 |      100 |    83.33 |    92.31 |                26 |
  activate.service.ts                          |     87.5 |      100 |       50 |    83.33 |                12 |
 app/account/password                          |    83.54 |    73.08 |       75 |    82.61 |                   |
  password-strength-bar.component.ts           |    76.09 |    70.83 |       80 |    76.19 |... 75,76,77,78,80 |
  password.component.html                      |      100 |      100 |      100 |      100 |                   |
  password.component.ts                        |    95.83 |      100 |       80 |       95 |                27 |
  password.service.ts                          |     87.5 |      100 |       50 |    83.33 |                12 |
 app/account/password-reset/finish             |    95.56 |    66.67 |       80 |    95.12 |                   |
  password-reset-finish.component.html         |      100 |      100 |      100 |      100 |                   |
  password-reset-finish.component.ts           |    97.22 |    66.67 |     87.5 |    97.06 |                68 |
  password-reset-finish.service.ts             |     87.5 |      100 |       50 |    83.33 |                12 |
 app/account/password-reset/init               |       96 |       50 |    83.33 |    94.44 |                   |
  password-reset-init.component.html           |      100 |      100 |      100 |      100 |                   |
  password-reset-init.component.ts             |      100 |       50 |      100 |      100 |                22 |
  password-reset-init.service.ts               |     87.5 |      100 |       50 |    83.33 |                12 |
 app/account/register                          |    91.67 |    83.33 |    66.67 |    90.91 |                   |
  register.component.html                      |      100 |      100 |      100 |      100 |                   |
  register.component.ts                        |    92.31 |    83.33 |    71.43 |    91.89 |          38,39,63 |
  register.service.ts                          |     87.5 |      100 |       50 |    83.33 |                13 |
 app/account/settings                          |      100 |       50 |      100 |      100 |                   |
  settings.component.html                      |      100 |      100 |      100 |      100 |                   |
  settings.component.ts                        |      100 |       50 |      100 |      100 |                24 |
 app/admin/audits                              |      100 |      100 |      100 |      100 |                   |
  audit.model.ts                               |      100 |      100 |      100 |      100 |                   |
  audits.component.html                        |      100 |      100 |      100 |      100 |                   |
  audits.component.ts                          |      100 |      100 |      100 |      100 |                   |
  audits.service.ts                            |      100 |      100 |      100 |      100 |                   |
 app/admin/configuration                       |    93.94 |     12.5 |    85.71 |    92.59 |                   |
  configuration.component.html                 |      100 |      100 |      100 |      100 |                   |
  configuration.component.ts                   |    94.44 |     12.5 |    85.71 |    93.33 |                30 |
  configuration.service.ts                     |    92.86 |      100 |    85.71 |    90.91 |                59 |
 app/admin/health                              |    70.45 |       25 |    58.33 |    64.86 |                   |
  health-modal.component.html                  |      100 |      100 |      100 |      100 |                   |
  health-modal.component.ts                    |    33.33 |        0 |        0 |    23.08 |... 23,27,28,30,35 |
  health.component.html                        |      100 |      100 |      100 |      100 |                   |
  health.component.ts                          |    89.47 |       75 |    85.71 |     87.5 |             41,42 |
  health.service.ts                            |     87.5 |      100 |       50 |    83.33 |                37 |
 app/admin/logs                                |      100 |      100 |      100 |      100 |                   |
  log.model.ts                                 |      100 |      100 |      100 |      100 |                   |
  logs.component.html                          |      100 |      100 |      100 |      100 |                   |
  logs.component.ts                            |      100 |      100 |      100 |      100 |                   |
  logs.service.ts                              |      100 |      100 |      100 |      100 |                   |
 app/admin/metrics                             |    79.31 |        0 |       70 |       75 |                   |
  metrics.component.html                       |      100 |      100 |      100 |      100 |                   |
  metrics.component.ts                         |    68.42 |        0 |    57.14 |     62.5 | 30,31,32,33,41,45 |
  metrics.service.ts                           |      100 |      100 |      100 |      100 |                   |
 app/admin/user-management                     |     87.7 |       50 |    75.68 |    86.92 |                   |
  user-management-delete-dialog.component.html |      100 |      100 |      100 |      100 |                   |
  user-management-delete-dialog.component.ts   |    92.86 |      100 |       75 |       90 |                18 |
  user-management-detail.component.html        |      100 |      100 |      100 |      100 |                   |
  user-management-detail.component.ts          |      100 |      100 |      100 |      100 |                   |
  user-management-update.component.html        |      100 |      100 |      100 |      100 |                   |
  user-management-update.component.ts          |     90.7 |    66.67 |    78.57 |    89.74 |       35,55,61,95 |
  user-management.component.html               |      100 |      100 |      100 |      100 |                   |
  user-management.component.ts                 |    80.77 |       40 |    68.75 |    81.25 |... 76,81,88,92,93 |
 app/core/auth                                 |    70.83 |    68.18 |    45.83 |    68.85 |                   |
  account.service.ts                           |    94.87 |    88.24 |    84.62 |    94.12 |             20,66 |
  auth-jwt.service.ts                          |    39.13 |        0 |        0 |    36.84 |... 32,37,38,39,41 |
  state-storage.service.ts                     |       50 |      100 |        0 |     37.5 |      6,8,11,15,19 |
 app/core/login                                |    48.15 |        0 |        0 |    47.37 |                   |
  login-modal.service.ts                       |    42.86 |        0 |        0 |    36.36 |... 13,14,16,17,18 |
  login.service.ts                             |    53.85 |      100 |        0 |     62.5 |          12,15,19 |
 app/core/user                                 |    83.33 |      100 |       50 |    82.14 |                   |
  user.model.ts                                |      100 |      100 |      100 |      100 |                   |
  user.service.ts                              |    68.75 |      100 |    42.86 |    64.29 |    16,20,28,29,33 |
 app/entities/book                             |    83.02 |    42.86 |    68.42 |     80.9 |                   |
  book-delete-dialog.component.html            |      100 |      100 |      100 |      100 |                   |
  book-delete-dialog.component.ts              |      100 |      100 |      100 |      100 |                   |
  book-detail.component.html                   |      100 |      100 |      100 |      100 |                   |
  book-detail.component.ts                     |       90 |      100 |       75 |    85.71 |                20 |
  book-update.component.html                   |      100 |      100 |      100 |      100 |                   |
  book-update.component.ts                     |    86.21 |      100 |    66.67 |       84 |       31,32,78,88 |
  book.component.html                          |      100 |      100 |      100 |      100 |                   |
  book.component.ts                            |    64.52 |    33.33 |    45.45 |    62.96 |... 57,58,64,72,73 |
  book.service.ts                              |    88.89 |      100 |    85.71 |     87.5 |             41,42 |
 app/entities/book-loan                        |    77.63 |    48.48 |    64.15 |    76.47 |                   |
  book-loan-delete-dialog.component.html       |      100 |      100 |      100 |      100 |                   |
  book-loan-delete-dialog.component.ts         |      100 |      100 |      100 |      100 |                   |
  book-loan-detail.component.html              |      100 |      100 |      100 |      100 |                   |
  book-loan-detail.component.ts                |       90 |      100 |       75 |    85.71 |                20 |
  book-loan-update.component.html              |      100 |      100 |      100 |      100 |                   |
  book-loan-update.component.ts                |    64.15 |    30.77 |    44.44 |       64 |... 79,129,139,143 |
  book-loan.component.html                     |      100 |      100 |      100 |      100 |                   |
  book-loan.component.ts                       |    64.52 |    33.33 |    45.45 |    62.96 |... 57,58,64,72,73 |
  book-loan.service.ts                         |     92.5 |    71.43 |     87.5 |    92.11 |          53,54,56 |
 app/entities/catalog-entry                    |    77.97 |    27.27 |    60.47 |    76.19 |                   |
  catalog-entry-delete-dialog.component.html   |      100 |      100 |      100 |      100 |                   |
  catalog-entry-delete-dialog.component.ts     |      100 |      100 |      100 |      100 |                   |
  catalog-entry-detail.component.html          |      100 |      100 |      100 |      100 |                   |
  catalog-entry-detail.component.ts            |       90 |      100 |       75 |    85.71 |                20 |
  catalog-entry-update.component.html          |      100 |      100 |      100 |      100 |                   |
  catalog-entry-update.component.ts            |    70.73 |       20 |    47.06 |    69.23 |... ,57,97,107,111 |
  catalog-entry.component.html                 |      100 |      100 |      100 |      100 |                   |
  catalog-entry.component.ts                   |    64.52 |    33.33 |    45.45 |    62.96 |... 57,58,64,72,73 |
  catalog-entry.service.ts                     |    88.89 |      100 |    85.71 |     87.5 |             41,42 |
 app/layouts/main                              |       96 |    81.25 |      100 |    95.24 |                   |
  main.component.html                          |      100 |      100 |      100 |      100 |                   |
  main.component.ts                            |    95.83 |    81.25 |      100 |       95 |                23 |
 app/shared/alert                              |       88 |    82.14 |    71.43 |    87.23 |                   |
  alert-error.component.ts                     |       88 |    82.14 |    71.43 |    87.23 | 27,28,83,84,85,87 |
 app/shared/constants                          |      100 |      100 |      100 |      100 |                   |
  error.constants.ts                           |      100 |      100 |      100 |      100 |                   |
  input.constants.ts                           |      100 |      100 |      100 |      100 |                   |
  pagination.constants.ts                      |      100 |      100 |      100 |      100 |                   |
 app/shared/login                              |     87.5 |    57.14 |       75 |    86.67 |                   |
  login.component.html                         |      100 |      100 |      100 |      100 |                   |
  login.component.ts                           |     87.1 |    57.14 |       75 |    86.21 |       33,34,63,66 |
 app/shared/model                              |      100 |      100 |      100 |      100 |                   |
  book-loan.model.ts                           |      100 |      100 |      100 |      100 |                   |
  book.model.ts                                |      100 |      100 |      100 |      100 |                   |
  catalog-entry.model.ts                       |      100 |      100 |      100 |      100 |                   |
 app/shared/util                               |      100 |    83.33 |      100 |      100 |                   |
  request-util.ts                              |      100 |    83.33 |      100 |      100 |                25 |
-----------------------------------------------|----------|----------|----------|----------|-------------------|

Test Suites: 40 passed, 40 total
Tests:       132 passed, 132 total
Snapshots:   0 total
Time:        128.601s
Ran all test suites.



:_+ Installing



::_

:inst

:install

set fp=* Install any dependencies listed in package.json.

rem It's a good idea to run npm install before doing your build in case npm needs to update. - Sean

rem lu: Mar-31-2020

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
npm i %cbf-url%

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



:_

:inse

:insls

set fp=* Install serverless.

rem lu: Jul-15-2021

echo.
echo %fp%

npm install serverless -g

exit/b


Footnote
>< >< ><

I'm not sure I needed to run this command because when I ran the "npm install" command, I got
a message that said:

 ¦   Serverless Framework successfully installed!    ¦
 ¦                                                   ¦
 ¦   To start your first project run 'serverless'.   ¦

Is this command folder-specific?



:_

:int

:inte

:rit

:rtit

set fp=* Run the integration tests.

echo.
echo %fp%

npm run test:int

exit/b


Footnote
>< >< ><

You might need to be in a particular folder for this command to work.

If you get a connection typ error, you may need to run the following command in the proper 
folder in a Bash window, Ben B. on c. Jul-8-2021:

REPLAY=record npm run test:int



:_ (!rfsp) (mov-6)
