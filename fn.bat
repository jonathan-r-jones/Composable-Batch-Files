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
echo Entangled variable: cbf_fn

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

set fp=* Validate if a file is defined and exists.

set cbf_fn=
set cbf_jf=
set cbf_java=

call n %1

rem The label is not found.
if %errorlevel% gtr 0 exit/b(

call n %1>nul

if defined cbf_fn (
  rem echo.
  rem echo * cbf_fn file is defined. {%cbf_fn%}
  if exist "%cbf_fn%" (
    rem echo.
    rem echo * cbf_fn file exists.
    goto file_is_validated
  )
)

if defined cbf_jf (
  if exist "%cbf_jf%" (
    set cbf_fn=%cbf_jf%
    goto file_is_validated
  )
)

if defined cbf_java (
  if exist "%cbf_java%" (
    set cbf_fn=%cbf_java%
    goto file_is_validated
  )
)

echo.
echo * Error: File could not be validated. {%cbf_fn%}

exit/b 2



:_

:file_is_validated

set fp=* File is validated. {%cbf_fn%}

rem echo.
rem echo %fp%

exit/b



:_