:_

@echo off



:_

set filep=* Chef consumer.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

echo.
echo Batch file style: Function routing.

echo.
echo Examples

echo.
echo Example 1: 

exit/b



:_

:ct1

set fp=* Converge test 1 using - recipe[cart_slave]

rem lu: Nov-25-2019

echo.
echo %fp%

rem Outcome:
rem ================================================================================
rem Error expanding the run_list:
rem ================================================================================
rem Unexpected API Request Failure:
rem -------------------------------
rem Object not found: chefzero://localhost:1/environments/dv

call td caco

call %0 converge

exit/b



:_

:ct2

set fp=* %1. Using - recipe[cart_slave]

rem lu: Nov-25-2019

echo.
echo %fp%

rem Outcome:
rem        ================================================================================
rem        Error expanding the run_list:
rem        ================================================================================
rem 
rem        Unexpected API Request Failure:
rem        -------------------------------
rem        Object not found: chefzero://localhost:1/environments/dv

call td caco

call %0 converge

exit/b



:_

:test_3

set fp=* %1. Run from the chef folder using - recipe[cart_slave]

rem lu: Nov-25-2019

echo.
echo %fp%

rem Outcome:

call td chef

call %0 converge

exit/b



:_

:test_4

set fp=* %1. Run from the chef folder using - recipe[cart_slave]

rem lu: Nov-25-2019

echo.
echo %fp%

rem Outcome:
rem  ================================================================================
rem        Eng the run_list:
rem        ================================================================================
rem 
rem        Unexpected API Request Failure:
rem        -------------------------------
rem        Object not found: chefzero://localhost:1/environments/dv

call td endv

call %0 converge

exit/b



:_

:test_5

set fp=* %1. Added environments\dv folder to the chef folder.

rem lu: Nov-25-2019

echo.
echo %fp%

rem Outcome:

call td caco

call %0 converge

exit/b



:_

:Jan-20-2020_3_17_PM

set fp=* %1. Verify error message.

rem lu: Jan-20-2020

echo.
echo %fp%

call td caco

call ch converge

exit/b

Outcome:

 Error Resolving Cookbooks for Run List:
       ================================================================================

       Missing Cookbooks:
       ------------------
       No such cookbook: cart_slave

exit/b



:_ (!rfsp) (mov-7)