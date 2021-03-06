:_

@echo off



:_

set filep=* Clone a Git repository - basic version.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto preprocess



:_

:help

rem echo.
rem echo %filep%

echo.
echo Usage: cn [Parameter 1] [Parameter 2]

echo.
echo Parameter 1: URL nickname of the repository.

set parameter_2=Parameter 2 (Optional): If left blank, the repository will be installed

echo.
echo %parameter_2%

set parameter_2a=into a subfolder of the current folder. 

echo %parameter_2a%

set parameter_2b=If "r" is specified, the repository will be installed into the default

echo.
echo %parameter_2b%

set parameter_2c=repository folder.

echo %parameter_2c%

set parameter_2d=If "p" is specified, the repository will be installed into the specified 

echo.
echo %parameter_2d%

set parameter_2e=CBF Path, assuming it's not already there.

echo %parameter_2e%

exit/b



:_

:preprocess

set fp=* preprocess.

if "%~2" == ""  (
  call n %1
  goto main_function
)

if "%~2" == "p" (
  goto nickname_path_driven
)

if "%~2" == "r" (
  goto repository_folder
)



:_

:nickname_path_driven

set fp=* Use the CBF nickname path to determine where to install the repository.

if exist %cbf-pt% (
  echo.
  echo "%cbf-pt%" already exists.
  exit/b
)

echo.
call m set_parent_fd "%cbf-pt%\.." parent_folder

cd /d %parent_folder%

goto main_function



:_

:repository_folder

set fp=* Use the default repository folder to install the repository.

call td r

call n %1

goto main_function



:_

:main_function

set fp=* Main function.

echo.
echo * CBF URL: %cbf-url%

echo.
git clone %cbf-url%

if "%~2" == "" (
  if not "%cbf-pt%" == "" (
    call td %1
  )
)

rem (!rfsp) (mov-2)

exit/b



:_