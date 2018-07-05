:_

@echo off



:_

set filep=* Clone a Git repository - basic version.

echo.
echo %filep%                         



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

if not "%~1" == "" call n %1

if "%~2" == "" goto main_function



:_

set fp=* Use the CBF nickname to determine where to install the repository.

if exist %cbf_path% (
  echo.
  echo "%cbf_path%" already exists.
  exit/b
)

call m set_parent_fd "%cbf_path%\.." parent_folder

cd /d %parent_folder%

goto main_function



:_

:h

:help

rem echo.
rem echo File Purpose: %filep%

echo.
echo Filename stands for: CloNe repository.

echo.
echo Usage: cn [Parameter 1] [Parameter 2]

echo.
echo Parameter 1: URL nickname of the repository.

echo.
echo Parameter 2 (Optional): If left blank, the repository will be installed 
echo into a subfolder of the current folder.

echo.
echo If "p" is specified, the repository will be installed into the specified 
echo CBF Path, assuming its not already installed there.

exit/b



:_

:main_function

set fp=* Main function.

echo.
git clone %cbf_url%

rem (!rfsp) (mov-2)

exit/b



:_