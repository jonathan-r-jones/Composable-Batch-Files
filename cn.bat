:_

@echo off



:_

set filep=* Clone a Git repository using a nickname only.

setlocal



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

call n %1

goto preprocessor



:_

:help

echo.
echo Usage: cn [Parameter 1]

echo.
echo Parameter 1: Nickname of the repository.

exit/b



:_

:preprocessor

set fp=* Initialize key variables used by this file.

echo.
echo %fp%

set cbf_branch_name=
set cbf_clone_url=
set cbf_path=



:_

set fp=* Guard clause.

call n %1

if %errorlevel% == 1 (
  echo.
  echo **** Error processing alias.
  exit/b
)

if "%cbf_clone_url%" == "" (
   echo.
   echo "* Error: Clone URL is a required field."
   exit/b
)

if "%cbf_path%" == "" (
   echo.
   echo "* Error: Path is a required field."
   exit/b
)

if exist "%cbf_path%" (
   echo.
   echo "* Error: CBF Path already exists."
   call td %1
   exit/b
)



:_

set fp=* Main function.

rem lu: 

endlocal

echo.
echo %filep%

if "%cbf_branch%" == "" (
   set cbf_branch=master
)

echo.
git clone %cbf_clone_url% --branch %cbf_branch% %cbf_path%

call td %1

exit/b (!rfsp) (mov-2)



:_