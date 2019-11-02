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

goto preprocess



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

:preprocess

set fp=* In order to promote freshness, reset the error level.

ver>nul



:_

set fp=* Validate input.

set cbf_path=

call n %1

if %errorlevel% == 1 (
  echo.
  echo * Error: Label not found. Oct-17-2019 5:45 PM
  call m clear_errorlevel_silently 
  exit/b
)

if "%cbf_path%" == "" (
  echo.
  echo * Cbf_path is not assigned for '%~1'.
  goto try_alternative
)

if not exist "%cbf_path%" (
  echo.
  echo * Folder does not exist at "%cbf_path%". 
  goto try_alternative
)

goto main_function



:_

:find_parent_folder

call m set_parent_fd "%cbf_path%\.." parent_folder

rem echo Parent Folder: %parent_folder%
cd /d %parent_folder%

exit/b



:_

:try_alternative

set fp=* Try alternative.

echo.
echo %fp%

if not "%cbf_filename%" == "" (
  echo.
  echo Oct-31-2019 8:03 PM
  call m expand_to_path_only "%cbf_filename%"
  goto validate_version_2
)
                
if not "%cbf_application%" == "" (
  echo.
  call m expand_to_path_only "%cbf_application%"
  goto validate_version_2
)
                
echo.
echo * Error: Can't find anywhere to go.
rem qjq-1

exit/b



:_

set fp=* Emulate cd and go to the parent folder.

if "%~1" == ".." (
  echo.
  echo %fp%
  cd %1
  exit/b
)



:_

:main_function

:validate_version_2

set fp=* Main function.

if "%~2" == "p" goto find_parent_folder

cd /d "%cbf_path%"

set cbf_back=%cbf_path%

exit/b



:_