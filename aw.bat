:_

@echo off



:_

set filename_stands_for=* AWS-related tasks.



:_

set fp=* Route help callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Nov-1-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

exit/b



:_

:vers

set fp=* Version

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --version

exit/b



:_

:conf

set fp=* Configure

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure

exit/b



:_

:s3

set fp=* List all s3 buckets.

rem lu: Nov-2-2018

echo.
echo %fp%

aws s3 ls

exit/b



:_

:add_account

set fp=* Add account.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure --profile account2

exit/b



:_

:voa

set fp=* View other account.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.

aws --profile account2 s3 ls

exit/b



:_

:sc

set fp=* Look up sample code.

rem lu: Nov-2-2018

echo.
echo %fp%

call sf aws_cli

exit/b



:_

:cent

set fp=* List EC@ AMI CentOS images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description, Values=*CentOS*" "Name=owner-alias,Values=amazon"

exit/b



:_

:win

:wind

set fp=* List EC@ AMI Windows images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description, Values=*Wind*" "Name=owner-alias,Values=amazon"

exit/b



:_

:dry

set fp=* Dry run.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 run-instances --dry-run

exit/b



:_

:ahelp

set fp=* AWS help.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --help

exit/b



:_

:hs3

set fp=* Help for S3

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 help
rem qq-1

exit/b



:_

:wh

set fp=* Website help.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 website help
rem qq-1

exit/b



:_ (!rfsp) (mov-6)