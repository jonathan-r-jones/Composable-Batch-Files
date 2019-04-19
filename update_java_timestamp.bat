:_

@echo off



:_

set fp=* Update timestamp.

rem echo.
rem echo %fp%

set classpath=%dropbox%\it\composable_batch_files
java Get_Timestamp_With_No_Spaces>%tmp%\java_timestamp.txt

rem cd
rem echo jt: %java_timestamp%

exit/b



:_