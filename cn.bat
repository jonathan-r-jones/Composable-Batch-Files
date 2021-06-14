:_

@echo off



:_

set filep=* Clone a Git repository using a nickname only.

echo.
echo %filep%



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto preprocess



:_

:help

echo.
echo Usage: cn [Parameter 1]

echo.
echo Parameter 1: Nickname of the repository.

exit/b



:_

:preprocess

set fp=* Initialize key variables used by this file.

rem echo.
rem echo %fp%

set cbf-branch=
set cbf-clone-url=
set cbf-pt=



:_

set fp=* Guard clause.

call n %1

if %errorlevel% == 1 (
  echo.
  echo * Error ID: Oct-17-2019 5:37 PM
  exit/b
)

if "%cbf-clone-url%" == "" (
   echo.
   echo "* Error: Clone URL is a required field."
   exit/b
)

if "%cbf-pt%" == "" (
   echo.
   echo "* Error: Path is a required field."
   exit/b
)

if exist "%cbf-pt%" (
   echo.
   echo "* Error: CBF Path already exists."
   call td %1
   rem exit/b
)



:_

set fp=* Main function.

rem lu: Apr-25-2019

if "%cbf-branch%" == "" (
   set cbf-branch=main
)

echo.
git clone %cbf-clone-url% --branch %cbf-branch% "%cbf-pt%"

call td %1

exit/b (!rfsp) (mov-2)



:_