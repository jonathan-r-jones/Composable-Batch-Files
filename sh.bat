:_

@echo off



:_

set filep=* Perform SSH-related commands.



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

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



:_

:4

:ub

set fp=* Connect to Ubuntu server.

rem lu: Feb-15-2019

echo.
echo %fp%

call n git_user_bin

set git_user_bin=%cbf_path%

call td tfkeys

echo.

rem This works.

"%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@ec2-18-253-170-172.us-gov-east-1.compute.amazonaws.com

exit/b



:_ (!rfsp) (mov-6)