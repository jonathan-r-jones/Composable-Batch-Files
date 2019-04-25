:_

@echo off



:_

set filep=* Transform directory.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" %0 cbf

if "%~1" == "/?" goto help

goto preprocessor



:_ (!rfsp) (mov-6)

:help

echo.
echo Filename purpose: %filep%

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Path nickname, the name of a child folder or ".." which emulates the cd command.

echo.
echo Parameter 2 (Optional): If "p" is specified, go to the parent folder of parameter 1.

exit/b



:_

:find_parent_folder

call m set_parent_fd "%cbf_path%\.." parent_folder

rem echo Parent Folder: %parent_folder%
cd /d %parent_folder%

exit/b



:_

:preprocessor

set fp=* In order to promote freshness, reset the error level.

ver>nul



:_

set fp=* Emulate cd and go to the parent folder.

if "%~1" == ".." (
  echo.
  echo %fp%
  cd %1
  exit/b
)



:_

set fp=* Main function.

rem Clear CBF path.
set cbf_path=

if not "%~1" == "" call n %1 %2

if "%cbf_path%" == "" (
  echo.
  echo * Nickname Missing: There is no cbf_path defined for '%~1'. 
  exit/b 1
)

if "%~2" == "p" goto find_parent_folder

if not exist "%cbf_path%" (
  echo.
  echo * Folder does not exist at "%cbf_path%". 
  exit/b 1
)

cd /d "%cbf_path%"

set cbf_back=%cbf_path%

exit/b



:_