:_

@echo off



:_

set filep=* Liquibase operations.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto main_function



:_

:help

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 

set parameter_2=Parameter 2 (Optional): 

echo.
echo %parameter_1%

echo.
echo %parameter_2%

exit/b



:_

:main_function

rem lu: Aug-20-2019

echo.
echo %fp%

call brfn cartdv lqc
rem call brfn cart lc

echo.
echo Log file: %cbf_filename%

echo.
liquibase --driver=org.postgresql.Driver --changeLogFile="%cbf_filename%" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory="C:\a\liqui_MYDB_MYSCHEMA_Data.out" update

rem Matt's command is below.
rem liquibase --driver=org.postgresql.Driver --changeLogFile="C:\dev\cart_app\cart\api\src\main\resources\config\liquibase\master.xml" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory=c:\dev\temp\liqui_MYDB_MYSCHEMA_Data.out update

exit/b



:_ (!rfsp) (mov-7)