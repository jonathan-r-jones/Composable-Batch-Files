:_ (!bftt)

@echo off



:_

set fp=* Set color.

rem echo %fp%
rem echo.

rem color 3f
rem &doscolor



:_

set fp=* Router.

rem echo %fp%
rem echo.

goto code_execution_area

goto %configuration%

m exit



:_

:exit

set fp= * Exit.

echo.
echo.
rem echo %fp%

rem (!x)

pause
exit



:_

:exitb

set fp= * Exit.

rem echo.
rem echo.
rem echo %fp%

rem (!xb)
exit /b



:_

:code_execution_area

set fp=* Execution area. Code below here runs.

rem echo.
rem echo %fp%

cls
echo.

rem ******* (!rfcea, !rfsp) (mov4)



:_

set fp=* Update timestamp.

rem echo.
rem echo %fp%

set classpath=%dropbox%\it\composable_batch_files
java Get_Timestamp_With_No_Spaces>%tmp%\java_timestamp.txt

rem cd
rem echo jt: %java_timestamp%

m exitb



:_ EOF << (!eftt)