:_

@echo off



:_

set filep=* Create a conflict copy report.

rem echo.
rem echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

rem lu: Feb-18-2020

echo.
echo Usage: %0

exit/b



:_

:main_function



:_

:main_function

echo _,.-'~'-.,__,.-'~'-.,__,.-'~'-.,_  Concop Search Results>%temp%\search_results_concop.txt
echo.>>%temp%\search_results_concop.txt



:_

call td dr

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call td cmac

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call td drcmac

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call td mecfg

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call td sv

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

call td drsv

call dr concop>>%temp%\search_results_concop.txt

call dr renamed>>%temp%\search_results_concop.txt



:_

set fp=* Open the report.

call an me>nul

start "Test Title" "%cbf_application%" "%temp%\search_results_concop.txt"

exit/b



:_ (!rfsp) (mov-7)
