:_

@echo off



:_

set filep=* Transform directory.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help



:_

set fp=* Emulate cd and go to the parent folder.

if "%~1" == ".." (
  echo.
  echo %fp%
  cd %1
  exit/b
)



:_

set fp=* Detect an existing folder in the first parameter.

if exist "%1" (
  echo.
  echo * Existing child folder.
  cd %1
  exit/b
)



:_

set fp=* Main function.

if not "%~1" == "" call n %1 %2

if "%cbf_path%" == "" (
  echo.
  echo * Nickname Error: There is no cbf_path defined for '%~1'. 
  exit/b
)

if "%~2" == "p" goto find_parent_folder

if not exist "%cbf_path%" (
  echo.
  echo * Error: Folder does not exist at "%cbf_path%". 
  exit/b 1
)

cd /d "%cbf_path%"

exit/b



:_

:find_parent_folder

call m set_parent_fd "%cbf_path%\.." parent_folder
rem echo Parent Folder: %parent_folder%
cd /d %parent_folder%

exit/b



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
echo Parameter 1: Path nickname, the name of a child folder or ".." which emulates the cd command.

echo.
echo Parameter 2 (Optional): If "p" is specified, go to the parent folder of parameter 1.

exit/b



:_