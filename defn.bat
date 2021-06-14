:_

@echo off



:_

set filep=* Delete a file based on a passed in filename alias.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Alias of filename you wish to delete.

echo.
echo %parameter_1%

exit/b



:_

:main_function

call m reset

call n %1



:_

if not "%cbf-fn%" == "" (
  if not exist "%cbf-fn%" (
    echo.
    echo * Error: The file "%cbf-fn%" does not exist."
  ) else (
    echo.
    echo * Deleting "%cbf-fn%".
    del "%cbf-ex%"
  )
  exit/b
)



:_

if not "%cbf-ex%" == "" (
  if not exist "%cbf-ex%" (
    echo.
    echo * Error: The file "%cbf-ex%" does not exist."
  ) else (
    echo.
    echo * Deleting "%cbf-ex%".
    del "%cbf-ex%"
  )
  exit/b
)



:_

echo.
echo * Error: Can't find anything to delete.

exit/b



:_ (!rfsp) (mov-7)
