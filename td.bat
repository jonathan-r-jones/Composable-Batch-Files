:_

@echo off



:_

set filep=* Transform/change directory.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if "%~1" == "shared_list" goto %1



:_

set fp=* Main function.

if not "%~1" == "" call pn %1

if "%cbf_path%" == "" (
  echo.
  echo Input Error: There is no cbf_path defined for '%~1'. 
  m exitb
)

if "%2" == "p" goto find_parent_folder

if not exist "%cbf_path%" (
  echo.
  echo Folder does not exist at '%cbf_path%'. 
  m exitb
)

cd /d %cbf_path%

m exitb



:_

:find_parent_folder

call m set_parent_fd "%cbf_path%\.." parent_folder
rem echo Parent Folder: %parent_folder%
cd /d %parent_folder%

m exitb



:_ (!rfsp) (mov-6)

:h

:help

echo.
echo Filename stands for: Transform Directory.

echo.
echo Last Updated: Mar-26-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname.

echo.
echo Parameter 2 (Optional): If "p" is specified, go to the parent folder of parameter 1.

m exitb



:_