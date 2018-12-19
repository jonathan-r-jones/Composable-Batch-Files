:_

@echo off



:_

set filename_stands_for=* Jonathan's AWS batch file.



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

set filep=File purpose: This file is a wrapper around the AWS CLI.

echo.
echo %filep%

echo.
echo Last Updated: Dec-18-2018

echo.
echo Usage: %0 [Parameter 1]

set parameter_1=Parameter 1: The function you wish to execute.

echo.
echo %parameter_1%

exit/b



:_

:ppt

set fp=* Jaws Powerpoint.

rem lu: Dec-18-2018

echo.
echo %fp%

call x jaws_ppt

exit/b



:_

:hello

echo.
echo Hello from the Jaws batch file. Think of "hello" as the name of a function you call.

exit/b



:_

:version

rem     Typing "jaws --version" is the equivalent as typing "aws version".
rem     So why bother using jaws then? Because jaws allows you to create a repeatable, testable, 
rem     version-controllable script. Jaws is a wrapper around AWS. Things you put in jaws will
rem     generally be more sophisticated than this simple example. You'll see.

echo.
aws --version

exit/b



:_

:cfg

set fp=* Configure

echo.
echo %fp%

echo.
aws configure

exit/b



:_

:dsg

set fp=* Describe our new security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups --group-names JawsSecurityGroup

exit/b



:_

:dsgs

set fp=* Describe security groups.

rem lu: Dec-11-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups

exit/b



:_

:desu

:subnets

set fp=* Describe subnets. When you choose an AWS subnet, you are choosing the availability ^
zone.

rem lu: Nov-19-2018

rem Presentation topic.

echo.
echo %fp%

echo.
aws ec2 describe-subnets

exit/b



:_

:create_security_group

:csg

set fp=* Create security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name JawsSecurityGroup ^
  --description "Security Group for EC2 instances to allow ports 22, 88 and 443"

exit/b



:_

:delete_security_group

:sg_delete

set fp=* Delete security group.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.

aws ec2 delete-security-group --group-name JawsSecurityGroup

exit/b



:_

:auth1

set fp=* Authorize secrurity group ingress.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name JawsSecurityGroup --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32

exit/b



:_

:auth2

set fp=* Authorize secrurity group ingress. - 2nd port

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name JawsSecurityGroup --protocol tcp ^
  --port 80 --cidr 0.0.0.0/0

exit/b



:_

:auth3

set fp=* Authorize secrurity group ingress. - 3rd port.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name JawsSecurityGroup --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0

exit/b



:_

:auth4

set fp=* Authorize secrurity group ingress. - 4th port for RDP connection.

rem lu: Dec-11-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name JawsSecurityGroup --protocol tcp ^
  --port 3389 --cidr 0.0.0.0/0

exit/b



:_

:e_c2

set fp=* Create environment, part 2.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.

call %0 create_user_mike

rem admins
call %0 create_iam_group

call %0 attach_policy_ec2

call %0 attach_policy_s3

call %0 add_user_to_group

rem See the BEFORE picture. What are the current security groups? How many are there?
call %0 dsg
 
call %0 create_security_group

call %0 auth1

call %0 auth2

call %0 auth3

call %0 auth4

rem See the AFTER picture. What are the current security groups? How many are there?
call %0 dsg

xit/b



:_

:cli_nov_29_postgres_test_db

set fp=* Create a database that mimics the connectable one.

rem lu: Nov-29-2018

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier%^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



:_

:retag

set fp=* Retag a resource.

rem lu: Dec-12-2018

echo.
echo %fp%

aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key=Name,Value=Jenkins_Dec_11_2018

rem These also work.
rem aws ec2 create-tags help>%temp%/j1.txt
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key=Name,Value=Production

rem Below here didn't work.
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags "ResourceType=instance,Tags=[{Key=Name,Value=xxss}]"
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key="Name", Value="testtt"
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags 'Key="[Name]",Value=test222'

exit/b



:_

:istats

set fp=* Get instances status.

rem lu: Dec-13-2018

echo.
echo %fp%

echo.
aws ec2 describe-instances --color off

exit/b



:_

:li_t3_medium

set fp=* Launch instance t3 medium Windows on GovCloud.

rem I installed Jenkins on this server. Then I retagged it to Jenkins.

rem lu: Dec-11-2018

echo.
echo %fp%

call td tfkeys

call %0 check_pem_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-02ee68cd896a434c8 ^
  --instance-type t3.medium ^
  --key-name kibble_balance_key_pair ^
  --security-group-ids sg-0d72c1ec60ee3852d ^
  --subnet-id subnet-9c220fd6 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=T3_Medium_Dec_11}]"
  --user-data file://my_script.sh

exit/b



:_

:is_hungry

set fp=* Jaws is hungry. Get out of the water!

rem Think of this as a function.

rem lu: Dec-18-2018

echo.
echo %fp%

call sf hungry_shark

exit/b



:_ (!rfsp) (mov-6)