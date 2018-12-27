:_

@echo off



:_

set filename_stands_for=* Perform SSH-related commands.



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
echo Last Updated: Nov-15-2018

echo.
echo Usage: sh [Parameter 1]

echo.
echo Parameter 1: Function to execute.

exit/b



:_

:connect_ec2_old

set fp=* Connect to an EC2 Instance.

echo %fp%

ssh -i ../secret/flask-server.pem ec2-user@ec2-35-163-224-123.us-west-2.compute.amazonaws.com

exit/b



:_

:connect_ec2

set fp=* Connect to an EC2 Instance.

rem lu: Dec-17-2018

echo.
echo %fp%

call td tfkeys

ssh -i "kibble_balance_key_pair.pem" root@ec2-18-253-149-113.us-gov-east-1.compute.amazonaws.com

exit/b



:_

:genk

:keyg

set fp=* Generate a new SSH key.

rem lu: Dec-4-2018

echo.
echo %fp%

call td sh

ssh-keygen -t rsa -b 4096 -C %2

exit/b



:_

:add

set fp=* Add key to the ssh-agent.

rem lu: Dec-4-2018

echo.
echo %fp%

call td sh

ssh-add

exit/b



:_

:ssa

set fp=* Start ssh agent.

rem lu: Dec-4-2018

echo.
echo %fp%

net start ssh-agent

exit/b



:_

:chpa

set fp=* Change passphrase.

rem lu: Dec-27-2018

rem This worked!

echo.
echo %fp%

call td home

echo.
ssh-keygen -p -f .\.ssh\id_rsa

exit/b



:_ (!rfsp) (mov-6)