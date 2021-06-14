:_

@echo off



:_

set filep=* Filename nickname dictionary that sets the full filename name corresponding to a given unique nickname parameter.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto validate_input



:_

:help

echo.
echo %filep%                         

set parameter_1=Parameter 1: Alias of the filename you are trying to set. This function tries ^
to return an existing ASCII file only.

echo.
echo %parameter_1%

echo.
echo Batch file style: Single Purpose

echo.
echo Entangled variable: cbf-fn

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set fp=* Validate if a file is defined and exists.

set cbf-fn=
set cbf-jf=
set cbf-java=

call n %1

rem The label is not found.
if %errorlevel% gtr 0 exit/b(

call n %1>nul

if defined cbf-fn (
  rem echo.
  rem echo * cbf-fn file is defined. {%cbf-fn%}
  if exist "%cbf-fn%" (
    rem echo.
    rem echo * cbf-fn file exists.
    goto file_exists
  )
)

if defined cbf-jf (
  if exist "%cbf-jf%" (
    set cbf-fn=%cbf-jf%
    goto file_exists
  )
)

if defined cbf-java (
  if exist "%cbf-java%" (
    set cbf-fn=%cbf-java%
    goto file_exists
  )
)

echo.
echo * Error: File doesn't exist. {%cbf-fn%}

exit/b 2



:_

:file_exists

set fp=* File exists. {%cbf-fn%}

rem echo.
rem echo %fp%

exit/b



:_
