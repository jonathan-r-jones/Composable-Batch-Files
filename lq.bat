:_

@echo off



:_

set filep=* Liquibase operations.

echo.
echo %filep%



:_

set fp=* Route callers.

if "%~1" == "/?" goto help

goto validate_input



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

:validate_input

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: For this command to work, you must be in the api folder, which is used to assign a relative path.
  exit/b 1
)

call fn lqc

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The CBF_Filename "%cbf_filename%" could not be found.
  exit/b
)

echo.
echo * Liquibase configuration file being used: %cbf_filename%



:_

:main_function

@echo on
liquibase --driver=org.postgresql.Driver --changeLogFile="%cbf_filename%" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory="C:\a\liqui_MYDB_MYSCHEMA_Data.out" update
@echo off

rem Matt's command is below.
rem liquibase --driver=org.postgresql.Driver --changeLogFile="C:\dev\cart_app\cart\api\src\main\resources\config\liquibase\master.xml" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory=c:\dev\temp\liqui_MYDB_MYSCHEMA_Data.out update

exit/b



:_ (!rfsp) (mov-7)
