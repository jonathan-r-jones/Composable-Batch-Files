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
echo Usage: %0

echo.
echo Batch file style: Single task

exit/b



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:validate_input

call td api>nul
echo.
echo CD: %cd%

echo %cd% | find /i "\api">nul

if %errorlevel% == 1 (
  echo.
  echo * Error: For this command to work, you must be in the api folder, which is used to assign a relative path.
  exit/b 1
)

call fn lqma

if not exist "%cbf_filename%" (
  echo.
  echo * Error: The CBF_Filename "%cbf_filename%" could not be found.
  exit/b
)

rem echo.
rem echo * Liquibase configuration file being used: %cbf_filename%

if "%~1" == "" goto update

goto %1



:_

:clearCheckSums

@echo on
liquibase --driver=org.postgresql.Driver --changeLogFile="%cbf_filename%" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory="C:\a\liqui_MYDB_MYSCHEMA_Data.out" clearCheckSums
@echo off

exit/b



:_

:listLocks

@echo on
liquibase --driver=org.postgresql.Driver --changeLogFile="%cbf_filename%" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory="C:\a\liqui_MYDB_MYSCHEMA_Data.out" listLocks
@echo off

exit/b



:_

:update

@echo on
liquibase --driver=org.postgresql.Driver --changeLogFile="%cbf_filename%" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory="C:\a\liqui_MYDB_MYSCHEMA_Data.out" update
@echo off

rem Matt's command is below.
rem liquibase --driver=org.postgresql.Driver --changeLogFile="C:\dev\cart_app\cart\api\src\main\resources\config\liquibase\master.xml" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory=c:\dev\temp\liqui_MYDB_MYSCHEMA_Data.out update

exit/b



:_

:help

echo.
echo * Pipe help to file for viewing.

set cbf_parameter=%temp%\%search_results_lq.txt

call liquibase --help>"%cbf_parameter%"

call an ie

call r

exit/b



:_

:rollback

echo.
echo * Pipe help to file for viewing.

@echo on
liquibase --driver=org.postgresql.Driver --changeLogFile="%cbf_filename%" --url="jdbc:postgresql://localhost:5432/cart?stringtype=unspecified" --username="postgres" --password="1q2w3e4Z" --defaultSchemaName="public" --diffTypes=data --dataOutputDirectory="C:\a\liqui_MYDB_MYSCHEMA_Data.out" rollbackToDate 2020-05-05 15:45:45
@echo off

rem Rolls back the database to the the state is was at the given date/time. 
rem Date Format: yyyy-MM-dd'T'HH:mm:ss

exit/b



:_ (!rfsp) (mov-7)
