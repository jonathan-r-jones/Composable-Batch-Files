:_

@echo off



:_

set filename_stands_for=* Jonathan plus AWS = Jaws. A CWS CLI demo companion file.



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



:_ **** Beginning of Demo Code ****



:_

rem qq-2 (Bookmark)



:_

:hello

echo.
echo Hello from the Jaws batch file. Think of "hello" as the name of a function you call ^
and "exit/b" as just the end of the function.

exit/b



:_

:version

rem     Typing "jaws --version" is the equivalent as typing "aws version".
rem     So why bother using jaws then? Because jaws allows you to create a repeatable, testable, 
rem     version-controllable and perfectible script. Jaws is a wrapper around AWS. Things you 
rem     put in jaws will generally be more sophisticated than this simple example. You'll see.

@echo on
aws --version
@echo off

exit/b



:_

:cfg

set fp=* Configure. On our customer's system, there is a gotch for the Default region name. ^
Must be us-gov-west-1 which struggled to learn. Here we will use us-gov-east-1.

echo.
echo %fp%

echo.
aws configure

exit/b



:_

:get_user

set fp=* Get user cli_demo_user.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name cli_demo_user

exit/b



:_

:lak

set fp=* List access keys.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name cli_demo_user

exit/b



:_

:create_group

set fp=* Create a group for CLI users.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam create-group --group-name cli_users_group

exit/b



:_

:lipo

set fp=* List policies.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam list-policies

exit/b



:_

:agp_ec2

set fp=* Attach group policy for EC2.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam attach-group-policy --policy-arn arn:aws-us-gov:iam::aws:policy/AmazonEC2FullAccess ^
  --group-name cli_users_group

exit/b



:_

:agp_rds

set fp=* Attach group policy for RDS.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam attach-group-policy --policy-arn arn:aws-us-gov:iam::aws:policy/AmazonRDSFullAccess ^
  --group-name cli_users_group

exit/b



:_

:autg

set fp=* Add user to group.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam add-user-to-group --group-name cli_users_group --user-name cli_demo_user

exit/b



:_

:create_security_group

:csg

set fp=* Create security group.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name CLIDemoSecurityGroup ^
  --description "Security Group for EC2 instances to allow ports 22, 88 and 443"

exit/b



:_

:dsc_sg

set fp=* Describe our new security group.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 describe-security-groups --group-names CLIDemoSecurityGroup

exit/b



:_

:auth1

set fp=* Authorize security group ingress for 1st port, SSH traffic on port 22.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name CLIDemoSecurityGroup --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32

exit/b



:_

:auth2

set fp=* Authorize security group ingress for 2nd port, HTTP traffic on port 80.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name CLIDemoSecurityGroup --protocol tcp ^
  --port 80 --cidr 0.0.0.0/0

exit/b



:_

:auth3

set fp=* Authorize security group ingress for 3rd port, HTTPS traffic on port 443.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name CLIDemoSecurityGroup --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0

exit/b



:_

:auth4

set fp=* Authorize security group ingress for 4th port, RDP connection traffic on port 3389.

rem lu: Dec-11-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name CLIDemoSecurityGroup --protocol tcp ^
  --port 3389 --cidr 0.0.0.0/0

rem To see the after picture, run this command.
rem call dsg 

exit/b



:_

:dsc_im

set fp=* Describe images.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws ec2 describe-images --filters "Name=description, Values=*Amazon Linux 2*" ^
  "Name=owner-alias,Values=amazon"

exit/b



:_

:desu

:dsc_su

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

:ri

:run_instance_cli_demo

set fp=* Run instance. Pem file must be in the current folder.

rem lu: Dec-28-2018

echo.
echo %fp%

call td a

call %0 check_pem_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-fff7118e ^
  --instance-type t3.medium ^
  --key-name kibble_balance_key_pair ^
  --security-group-ids sg-0221d125e029d634f ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=CLI_Demo_Jan_22_2019}]"
  --user-data file://my_script.sh

exit/b



:_

:delete_security_group

:sg_delete

set fp=* Delete security group.

rem lu: Nov-5-2018

echo.
echo %fp%

rem First you need to delete the instance from the console.

aws ec2 delete-security-group --group-name CLIDemoSecurityGroup


exit/b



:_

:the_end

:is_hungry

set fp=* Jaws is hungry. Get out of the water!

rem Think of this as a function.

rem lu: Dec-18-2018

echo.
echo %fp%

call sf hungry_shark

exit/b



:_

:check_pem_existence

set fp=* Check the current folder for the presence of an *.pem file(s).

rem lu: Nov-6-2018

echo.
echo %fp%

if not exist *.pem (
  echo.
  echo * Error: No pem file exist in the current folder.
  exit/b 1
)

exit/b 0



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

rem This also works.
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key=Name,Value=Production

exit/b



:_

:cren

set fp=* Create environment.

rem lu: Dec-27-2018

echo.
echo %fp%

echo.

call %0 create_user_mike

call %0 create_iam_group

call %0 attach_policy_ec2

call %0 attach_policy_s3

call %0 add_user_to_group

rem See the BEFORE picture. What are the current security groups? How many are there?
call %0 dsg
 
call %0 create_security_group

call set_firewall_rules

rem See the AFTER picture. What are the current security groups? How many are there?

call %0 dsg

xit/b



::_

:set_firewall_rules

set fp=* Set firewall rules.

call %0 auth1

call %0 auth2

call %0 auth3

call %0 auth4

exit/b



:_+ Descibe Functions



::_

:dsc_sgs

set fp=* Describe security groups.

rem lu: Dec-11-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups

exit/b



::_

:dsc_ins

set fp=* Get instances status.

rem lu: Dec-13-2018

echo.
echo %fp%

echo.
aws ec2 describe-instances --color off

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

:cak

set fp=* Create access key.

rem lu: Dec-28-2018

echo.
echo %fp%

echo.
aws iam create-access-key --user-name cli_demo_user

exit/b



:_+ Clean up old stuff so as to be ready for the next demo.



::_

:dak

:delete_access_key

set fp=* Delete access key.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam delete-access-key --access-key-id AKIALFJIWNYYPFBKQNAQ --user-name cli_demo_user

exit/b



::_

:rug

set fp=* Remove user from group.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam remove-user-from-group --user-name cli_demo_user --group-name cli_users_group

exit/b



::_

:du

:de_us

:delete_user

set fp=* Delete user.

rem lu: Dec-28-2018

echo.
echo %fp%

aws iam delete-user --user-name cli_demo_user

exit/b



:_

:dsc_vpcs

set fp=* Describe VPCs.

rem lu: Dec-20-2018

echo.
echo %fp%

echo.
aws ec2 describe-vpcs

exit/b



:_ (!rfsp) (mov-6)