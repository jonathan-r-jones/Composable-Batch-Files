:_

@echo off



:_

set filename_stands_for=* AWS-related tasks.



:_

set fp=* Route help callers.

if "%~1" == "/?" goto help

if "%~1" == "-h" goto help

if "%~1" == "help" goto help

if "%~1" == "" goto main_function

goto %1



:_

:help

echo.
echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Nov-1-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Function to execute. If left blank, main function will be executed.

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

:sc

set fp=* Look up sample code.

rem lu: Nov-2-2018

echo.
echo %fp%

call sf aws_cli

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

:ah

:ahelp

:h

set fp=* AWS help.

rem lu: Dec-17-2018

echo.
echo %fp%

set cbf_filename=%temp%\ahelp.txt

call aws %2 %3 %4 %5 help>%cbf_filename%

call n me

set cbf_parameter=%cbf_filename%

call r

exit/b



:_

:s3_ctp

set fp=* Copy stuff to bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 cp --recursive test1/ s3://test4444test4444

exit/b



:_+ Buckets



::_

:s3_mb

set fp=* Make a bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 mb s3://test4444test4444

exit/b



::_

:s3_rb

set fp=* Remove a bucket.

rem Note: The force parameter seems to placed exactly after the rb command in order to work.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 rb --force s3://test4444test4444

exit/b



::_

:s3_ls

:show_buckets

set fp=* List all s3 buckets.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 ls

exit/b



:_

:create_web_bucket

:cwb

set fp=* Create web bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 mb s3://cartsite2018.com

exit/b



:_

:dwb

:delete_web_bucket

set fp=* Delete web bucket.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 rb --force s3://cartsite2018.com

exit/b



:_

:sync

:copy_files_to_bucket

set fp=* Move files in current folder to bucket, a.k.a. sync.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 sync . s3://cartsite2018.com --acl public-read

exit/b



:_

:check_index_file_existence

set fp=* Check the current folder for the presence of an index.htm file(s).

rem lu: Oct-31-2018

echo.
echo %fp%

if not exist index.html (
  echo.
  echo * Error: No index.html file exist in the current folder.
  exit/b 1
)

exit/b 0



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

:define_website

set fp=* Define website.

rem lu: Nov-2-2018

echo.
echo %fp%

aws s3 website s3://cartsite2018.com/ --index-document index.html --error-document error.html

exit/b



:_

:s3_lbc

set fp=* List bucket contents.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 ls s3://test4444test4444

exit/b



:_

:mbpr

:make_bucket_publicly_readable

set fp=* S3 bucket should be publicly readable.

rem lu: Nov-2-2018

echo.
echo %fp%

aws s3api put-bucket-acl --bucket cartsite2018.com --acl public-read

exit/b



:_

:confirm_website

set fp=* Confirm website.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3api get-bucket-website --bucket cartsite2018.com

exit/b



:_+ Comparison between an S3API and an S3 command.



::_

:lb

:lbapi

set fp=* List buckets using s3api.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws s3api list-buckets

exit/b



::_

:lbs3

set fp=* List buckets.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws s3 ls

exit/b



:_

Metadata: Track Size (!tsaw)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Nov-6-2018   1,433     14,695       78

: Nov-6-2018   1,352     13,665       75



:_+ Create scripts with pauses that creates and destroys the entire environment.



::_

:e_c

set fp=* Create Environment 1.

rem lu: Nov-5-2018

echo.
echo %fp%

call %0 create_web_bucket

call %0 make_bucket_publicly_readable

call td cas

call %0 check_index_file_existence

if %errorlevel% == 1 (
  exit/b
)

call %0 copy_files_to_bucket

call %0 define_website

call %0 confirm_website

call sf cas

exit/b



::_

:cren

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

call set_firewall_rules

rem See the AFTER picture. What are the current security groups? How many are there?

call %0 dsg

call %0 describe_subnets

call %0 create_instance

exit/b



::_

:set_firewall_rules

set fp=* Set firewall rules.

call %0 auth1

call %0 auth2

call %0 auth3

call %0 auth4

exit/b



::_

:e_c3

set fp=* Create environment, part 3.

rem lu: Nov-6-2018

echo.
echo %fp%

call %0 create_security_group_id

call %0 d_sg_id

call %0 auth1_id

call %0 auth2_id

call %0 auth3_id

call %0 auth4_id

rem See the AFTER picture. What are the current security groups? How many are there?
call %0 d_sg_id

call %0 describe_subnets

call %0 launch_instance_id

exit/b



::_

:e_d

set fp=* Delete Environment 1.

rem lu: Nov-5-2018

echo.
echo %fp%

call %0 delete_web_bucket

exit/b



::_

:e_d2

set fp=* Delete environment, part 2.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.

call %0 delete_security_group

exit/b



:_

:cent

set fp=* List EC@ AMI CentOS images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-images --filters "Name=description, Values=*CentOS*" "Name=owner-alias,Values=amazon"

exit/b



:_

:run_cent

set fp=* Run EC2 CentOS instance 5.5 GPU (Community AMI) with tag.

rem lu: Nov-15-2018

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
  --image-id ami-42a2532b ^
  --instance-type t2.micro ^
  --key-name TerraformTest2 ^
  --security-group-ids sg-06fbc60e67d4aebbe ^
  --subnet-id subnet-8e0b7181 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=CentOS 5.5 GPU - Community AMI}]"
  --user-data file://my_script.sh

exit/b



:_+ IAM Commands - User Information



::_

:lak_jj

set fp=* List access keys for JJ.

rem lu: Dec-20-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name JJones2

exit/b



::_

:lak_tu

set fp=* List access keys for tu.

rem lu: Nov-19-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name terraform_user

exit/b



::_

:lak_pc

set fp=* List access keys for pc.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name procon_user

exit/b



::_

:lak_cli

set fp=* List access keys for cli_user.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name cli_user

exit/b



::_

:delete_user

set fp=* Delete user.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws iam delete-user --user-name jaws

exit/b



::_

:cak_cli

set fp=* Create access key for cli_user.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam create-access-key --user-name cli_user

exit/b



::_

:create_iam_group

:crgr

set fp=* Create IAM group. Note: This is an IAM group, and not a security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam create-group --group-name admins

exit/b



::_

:lgp

set fp=* List group policies.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-policies

exit/b



::_

:agp

:attach_policy_ec2

set fp=* Attach policy.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess ^
  --group-name admins

exit/b



::_

:agp2

:attach_policy_s3

set fp=* Attach S3 policy.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess ^
  --group-name admins

exit/b



::_

:gu_pc

set fp=* Get user information for PC.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name procon_user

exit/b



::_

:gu_jj

set fp=* Get user information for JJ.

rem lu: Dec-20-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name JJones2

exit/b



::_

:gui_t

set fp=* Get user information.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name terraform_user

exit/b



::_

:gu_t

set fp=* List access keys for tu.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name terraform_user

exit/b



::_

:add_user_to_group

:autg

set fp=* Add user to group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam add-user-to-group --group-name admins --user-name mike

exit/b



:_+ User Mike Commands



::_

:create_user_mike

set fp=* Create user Mike commands.

rem lu: Nov-19-2018

echo.
echo %fp%

call %0 cu_mike

call %0 gu_mike

call %0 lak_mike

rem Be sure to store the access key because it won't be shown again!
rem Find a way to communicate this secret key. Email is not secure.
call %0 cak_mike

exit/b



::_

:cu

:cu_mike

set fp=* Create user Mike.

rem lu: Nov-19-2018

echo.
echo %fp%

echo.
aws iam create-user --user-name mike

exit/b



::_

:gu_mike

set fp=* Get user information for Mike.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name mike

exit/b



::_

:lak_mike

set fp=* List access keys for Mike.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name mike

exit/b



::_

:cak_mike

set fp=* Create access key for Mike.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam create-access-key --user-name mike

exit/b



:_+ Configure Family



::_

:cp_pr

set fp=* Configure procon_user.

rem lu: Dec-11-2018

echo.
echo %fp%

echo.
aws configure --profile procon_user

exit/b



::_

:cfg_cp

set fp=* Clear profile setting.

rem lu: Nov-19-2018

echo.
echo %fp%

set AWS_PROFILE=

call %0 sh

exit/b



::_

:cfgl_pu

set fp=* Show procon_user profile

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws configure list --profile procon_user

exit/b



::_

:cfg_ap

set fp=* Add terraform_user profile.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure --profile terraform_user

exit/b



::_

:cfg

set fp=* Configure

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure

exit/b



:_

:run_cent_2

set fp=* Run EC2 CentOS instance 5.5 GPU (Community AMI) with tag.

rem lu: Nov-19-2018

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
  --image-id ami-42a2532b ^
  --instance-type t2.micro ^
  --key-name TerraformTest2 ^
  --security-group-ids sg-0fe9ba05e51b1d922 ^
  --subnet-id subnet-8ee161e9 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Test 2 CentOS 5.5 GPU - Community AMI}]"
  --user-data file://my_script.sh

exit/b



:_+ Database-related family.



::_

:create_db_postgres_1

set fp=* Create database.

rem lu: Nov-23-2018

echo.
echo %fp%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-instance-identifier PostgresTestDatabase ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



::_

:create_db_postgres_2

set fp=* Create database.

rem lu: Nov-26-2018

echo.
echo %fp%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-instance-identifier postgres-test-database-Nov-26-2018 ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



::_

:db_help

set fp=* Help database.

rem lu: Nov-23-2018

echo.
echo %fp%

echo.

rem aws rds create-db-instance help
rem aws create-db-instance help

call aws rds create-db-instance help>%temp%\j1.txt

rem The pause is important because the document takes a short bit of time to be created.
pause

call me j1

exit/b



::_

:create_db_mysql

set fp=* Create database

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws rds create-db-instance ^
  --db-instance-identifier MySQL-test-database ^
  --allocated-storage 20 ^
  --db-instance-class db.m1.small ^
  --engine mysql ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



::_

:create_db_postgres_Nov_27_2018

set fp=* Create database.

rem lu: Nov-26-2018

echo.
echo %fp%

rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes. Nov-26-2018

set database_name=postgres_test_database_Nov_26_2018_2

set instance_name=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_name% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



::_

:create_db_postgres_Nov_26_2018

set fp=* Create database.

rem lu: Nov-26-2018

echo.
echo %fp%

rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes. Nov-26-2018

set database_name=postgres_test_database_Nov_26_2018_2

set instance_name=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_name% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



::_

:create_db_postgres

set fp=* Create database.

rem lu: Nov-26-2018

echo.
echo %fp%

rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes. Nov-26-2018

set database_name=postgres_cli_database_Nov_27_2018

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



::_

:create_db_postgres_Nov_28_2018

set fp=* Create a database that mimics the connectable one.

rem lu: Nov-28-2018

echo.
echo %fp%

set database_name=postgres_cli_database_Nov_28_2018

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



::_

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

:run_windows_dec_10_2018

set fp=* Run Windows instance with tag. This works.

rem Microsoft Windows Server 2016 Base - ami-050202fb72f001b47
rem Microsoft Windows 2016 Datacenter edition. [English]
rem Root device type: ebs Virtualization type: hvm ENA Enabled: Yes
rem Available on free tier

rem lu: Dec-10-2018

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
  --image-id ami-050202fb72f001b47 ^
  --instance-type t2.micro ^
  --key-name TerraformTest2 ^
  --security-group-ids sg-06fbc60e67d4aebbe ^
  --subnet-id subnet-8e0b7181 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Windows_2016_Dec_10}]"
  --user-data file://my_script.sh

exit/b



:_

:run_windows_dec_10_2018_2

set fp=* Run Windows instance with tag on GovCloud.

rem Microsoft Windows Server 2016 Base - ami-050202fb72f001b47
rem Microsoft Windows 2016 Datacenter edition. [English]
rem Root device type: ebs Virtualization type: hvm ENA Enabled: Yes
rem Available on free tier

rem lu: Dec-10-2018

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
  --image-id ami-050202fb72f001b47 ^
  --instance-type t2.micro ^
  --key-name TerraformTest2 ^
  --security-group-ids sg-06fbc60e67d4aebbe ^
  --subnet-id subnet-8e0b7181 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Windows_2016_Dec_10}]"
  --user-data file://my_script.sh

exit/b



:_

:li_smallest_windows_possible

set fp=* Launch smallest Windows instance posssible with tag on GovCloud.

rem Microsoft Windows Server 2016 Base - ami-050202fb72f001b47

rem Microsoft Windows 2016 Datacenter edition. [English]
rem Root device type: ebs Virtualization type: hvm ENA Enabled: Yes
rem Available on free tier

rem lu: Dec-10-2018

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
  --instance-type t3.nano ^
  --key-name kibble_balance_key_pair ^
  --security-group-ids sg-0d72c1ec60ee3852d ^
  --subnet-id subnet-9c220fd6 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Tiny_Windows_Dec_11}]"
  --user-data file://my_script.sh

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



:_+ Start and Stop Controls



::_

:start_and_attach

:restart

set fp=* Restart an instance and attach a volume.

rem lu: Dec-17-2018

echo.
echo %fp%

call %0 set_instance_id %2

call %0 attach_volume %2

echo.
echo You need to wait until the volume is "in-use" before continuing.

echo.
set /P user_option=Does the volume now say "in-use"? (y/n): 

if not "%user_option%"=="y" echo.
if not "%user_option%"=="y" exit/b

call %0 start_instances %2

exit/b



::_

:si

:star

:start

:start_instance

:start_instances

set fp=* Start my instance from the command line!

rem lu: Dec-20-2018

echo.
echo %fp%

call %0 set_instance_id %2

echo.
call aws ec2 start-instances --instance-ids %instance_id%
                                       
exit/b



::_

:set_instance_id

set fp=* Set AWS instance id.

rem lu: Dec-13-2018

echo.
echo %fp%

rem Set default instance ID to Jenkins server.
set instance_id=i-0bce1b3771799a4ed

rem CentOS (!sid)
if "%~2" == "ce" set instance_id=i-0f7c7db92897103c5

rem Jenkins
if "%~2" == "je" set instance_id=i-0bce1b3771799a4ed

rem Jenkins Mimic
if "%~2" == "jm" set instance_id=i-0327d0c33cef79f33
rem qq-1

rem iJenkins
if "%~2" == "ij" set instance_id=i-05a46eb9d1166d95f

exit/b



::_

:set_volume_id

set fp=* Set volume id.

rem lu: Dec-17-2018

echo.
echo %fp%

rem Set default ID to Jenkins server.
set volume_id=vol-0c73f3f635ffb6d67

rem CentOS (!vid)
if "%~2" == "ce" set volume_id=vol-0bd1ab1ee51305743

rem Jenkins
if "%~2" == "je" set volume_id=vol-0c73f3f635ffb6d67

exit/b



::_

:set_device_type

set fp=* Set device type.

rem lu: Dec-17-2018

echo.
echo %fp%

rem Set default instance ID to Jenkins server.
set device_type=gp2

rem CentOS
if "%~2" == "ce" set device_type=/dev/sda1

rem Jenkins
if "%~2" == "je" set device_type=/dev/sda1

exit/b



::_

:stop_and_detach

set fp=* Detach a volume and stop and instance.

rem lu: Dec-17-2018

echo.
echo %fp%

call %0 set_instance_id %2

call %0 stop_instances %2

echo.
echo You need to wait until the instance has stopped before continuing.

echo.
set /P user_option=So has the instance stopped yet? (y/n): 

if not "%user_option%"=="y" echo.
if not "%user_option%"=="y" exit/b

call %0 set_volume_id %2

call %0 detach_volume %2

exit/b



::_

:stop

set fp=* Stop an instance.

rem lu: Dec-27-2018

echo.
echo %fp%

call %0 stop_instances %2

exit/b



::_

:stop_instances

set fp=* Stop a running instance from the command line.

rem lu: Dec-12-2018

echo.
echo %fp%

rem if "%~2" == "" (
  rem echo.
  rem echo You must specify and instance nickname.
  rem exit/b
rem )

call %0 set_instance_id %2

echo.
aws ec2 stop-instances --instance-ids  %instance_id% --color off

exit/b



::_

:dv

:detach_volume

set fp=* Detach a volume only AFTER and instance has been stopped.

rem lu: Dec-17-2018

echo.
echo %fp%

call %0 set_volume_id %2

echo.
call aws ec2 detach-volume --volume-id  %volume_id% --color off


exit/b



::_

:av

:attach_volume

set fp=* Attach a volume only BEFORE and instance has started.

rem This is buggy on Dec-17-2018.
rem So you can detach a volume but the attach-volume has an issue.
rem __main__.py: error: the following arguments are required: --instance-id

rem The workaround is to start the volume in the console. You don't even know if there is a charge for a running 
rem volume.

rem lu: Dec-17-2018

echo.
echo %fp%

call %0 set_volume_id %2

call %0 set_instance_id %2

call %0 set_device_type %2

@echo on

call aws ec2 attach-volume "{\"Device\": \"%device_type%\",\"InstanceId\": \"%instance_id%\",\"VolumeId\": \"%volume_id%\"}"

@echo off

rem These attempts didn't work.

rem --generate-cli-skeleton
rem call aws ec2 attach-volume "[{\"volume-id\":\"%volume_id%\",\"instance_id\":\"%instance_id%,\"device\":%device_type%\"}]"
rem --volume-id %volume_id% --instance_id %instance_id% --device %device_type%
rem "[{\"DeviceName\":\"/dev/sdb\",\"Ebs\":{\"VolumeSize\":20,\"DeleteOnTermination\":false,\"VolumeType\":\"standard\"}}]"

rem call aws ec2 attach-volume --volume_id %volume_id%

rem call aws ec2 attach-volume --instance_id=%instance_id%
rem call aws ec2 attach-volume --instance_id='%instance_id%'
rem call aws ec2 attach-volume --instance_id="%instance_id%"

rem call aws ec2 attach-volume --instance_id %instance_id%
rem call aws ec2 attach-volume --instance_id '%instance_id%'
rem call aws ec2 attach-volume --instance_id '%instance_id%'

rem call aws ec2 attach-volume --volume-id %volume_id% --instance_id %instance_id% --device %device_type%
rem call aws ec2 attach-volume --volume-id=%volume_id% --instance_id=%instance_id% --device=%device_type%
rem call aws ec2 attach-volume --volume-id='%volume_id%' --instance_id='%instance_id%' --device='%device_type%'
rem call aws ec2 attach-volume --volume-id "%volume_id%" --instance_id "%instance_id%" --device "%device_type%"

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

:stat

:istatus

set fp=* Get a particular instance status.

rem lu: Dec-13-2018

echo.
echo %fp%

echo.
aws ec2 describe-instance-status --instance-ids i-0bce1b3771799a4ed --color off

exit/b



:_

:connect

set fp=* Connect to my instance from the command line!

rem lu: Dec-12-2018

echo.
echo %fp%

call x je_server

exit/b



:_+ Profiles



::_

:cp_te

set fp=* Configure profile for Terraform user.

rem lu: Dec-11-2018

echo.
echo %fp%

echo.
aws configure --profile terraform_user

exit/b



::_

:cp_cu

set fp=* Add cli_user profile. (create profile, add profile skw)

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure --profile cli_user

exit/b



::_

:cp_kb

set fp=* Add kb

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure --profile kibble_balance

exit/b



::_

:sh

set fp=* Show current user profile.

rem lu: Dec-14-2018

echo.
echo %fp% AWS Profile: %AWS_PROFILE%

echo.
aws configure list

exit/b



::_

:set_test_profile

set fp=* Set AWS Profile test.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
set AWS_PROFILE=testxx

echo.
echo AWS_PROFILE: %aws_profile%

exit/b



::_

:look_up_profile_name

set fp=* Look up profile name.

rem lu: Dec-14-2018

echo.
echo %fp%

if "%~2" == "cl" set AWS_PROFILE_NAME=cli_user
if "%~2" == "kb" set AWS_PROFILE_NAME=kibble_balance
if "%~2" == "pr" set AWS_PROFILE_NAME=procon_user
if "%~2" == "te" set AWS_PROFILE_NAME=terraform_user

exit/b



::_

:cnp

set fp=* Configure new profile.

rem lu: Dec-14-2018

echo.
echo %fp%

echo.
aws configure

call %0 sp %2

call %0 sh

exit/b



::_

:spb

set fp=* Blank AWS Profile.

rem lu: Dec-14-2018

echo.
echo %fp%

set aws_profile=

echo.
echo AWS Profile: %aws_profile%

exit/b



::_

:cp

set fp=* Configure profile.

rem lu: Dec-14-2018

if "%~2" == "" goto cnp

call %0 look_up_profile_name %2

echo.
echo * Configure profile for: %aws_profile_name%

echo.
aws configure --profile %AWS_PROFILE_NAME%

exit/b



::_

:set_profile

:sp

set fp=* Set profile.

rem lu: Dec-14-2018

echo.
echo %fp%

call %0 look_up_profile_name %2

set aws_profile=%aws_profile_name%

echo.
echo AWS PROFILE: %aws_profile%

call %0 sh

exit/b



:_

:run_linux_2

set fp=* Run CentOS instance with tag.

rem lu: Nov-15-2018

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
  --image-id ami-00b94673edfccb7ca ^
  --instance-type t2.micro ^
  --key-name TerraformTest2 ^
  --security-group-ids sg-06fbc60e67d4aebbe ^
  --subnet-id subnet-8e0b7181 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Amazon Linux 2}]"
  --user-data file://my_script.sh

exit/b



:_

:li_linux_Dec_17_2018

set fp=* Launch instance CentOS.

rem lu: Dec-17-2018

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
  --image-id ami-08521bc84009eae26 ^
  --instance-type d2.xlarge ^
  --key-name kibble_balance_key_pair ^
  --security-group-ids sg-0d72c1ec60ee3852d ^
  --subnet-id subnet-9c220fd6 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=CentOS Comm. Ed. Dec-17-2018}]"
  --user-data file://my_script.sh

exit/b



:_

:li_windows_on_id

set fp=* Launch instance t3 medium Windows on id cloud.

rem Microsoft Windows Server 2016 Base - ami-ddb1d0bc
rem Microsoft Windows 2016 Datacenter edition. [English]
rem Root device type: ebs Virtualization type: hvm

rem lu: Dec-20-2018

echo.
echo %fp%

call td s

call %0 check_pem_existence

if %errorlevel% == 1 (
  exit/b
)

call n sg_id

call n subnet_id

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-ddb1d0bc ^
  --instance-type t3.medium ^
  --key-name cart-key ^
  --security-group-ids %sg_id% ^
  --subnet-id %subnet_id% ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Jenkins_Dec_20_2018}]"
  --user-data file://my_script.sh

exit/b



:_+ Describe functions.



::_

:d_sgs

set fp=* Describe security groups.

rem lu: Dec-11-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups

exit/b



::_

:d_sgsp

set fp=* Describe security groups, pipe to file.

rem lu: Dec-11-2018

echo.
echo %fp%

call an me

set cbf_filename=%temp%\describe_sgs.txt

call aws ec2 describe-security-groups>%cbf_filename%

call m apf

call r

exit/b



::_

:d_sg_id

set fp=* Describe our new security group on id.

rem lu: Dec-20-2018

echo.
echo %fp%

call n sg_id

echo.
aws ec2 describe-security-groups --group-id %sg_id%

exit/b



::_

:d_sg

set fp=* Describe EC2 security group.

rem lu: Dec-20-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups --group-names EC2SecurityGroup --group-ids sg-67b1b303

rem Below here don't work.

rem aws ec2 describe-security-groups --group-names EC2SecurityGroup --group-ids sg-67b1b303
rem An error occurred (VPCIdNotSpecified) when calling the DescribeSecurityGroups operation: No default VPC for this user

exit/b



::_

:win

:wind

set fp=* List EC2 Windows images.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws ec2 describe-images --filters "Name=description, Values=*2016-*" "Name=owner-alias,Values=amazon"
rem aws ec2 describe-images --owners amazon --filters "Name=platform,Values=windows"

exit/b



::_

:d_vpcs

set fp=* Describe VPCs.

rem lu: Dec-20-2018

echo.
echo %fp%

echo.
aws ec2 describe-vpcs

exit/b



::_

:d_ins

set fp=* Describes instances.

rem lu: Dec-19-2018

echo.
echo %fp%

echo.
aws ec2 describe-instances --color off

exit/b



::_

:d_insp

set fp=* Describes instances and pipe to file.

rem lu: Dec-19-2018

echo.
echo %fp%

call an np

set cbf_filename=%temp%\describe_instances.txt

call aws ec2 describe-instances>%cbf_filename%

call m apf

call r

exit/b



::_

:d_subp

set fp=* Describes subnets and pipe to file.

rem lu: Dec-19-2018

echo.
echo %fp%

call an np

set cbf_filename=%temp%\describe_instances.txt

call aws ec2 describe-subnets>%cbf_filename%

call m apf

call r

exit/b



::_

:d_sub

:describe_subnets

:desu

:subnets

set fp=* Describe subnets. When you choose an AWS subnet, you are choosing the availability ^
zone.

rem lu: Nov-19-2018

echo.
echo %fp%

echo.
aws ec2 describe-subnets

exit/b



::_

:run

set fp=* Run Windows instance with tag.

rem Microsoft Windows Server 2016 Base - ami-050202fb72f001b47
rem Microsoft Windows 2016 Datacenter edition. [English]
rem Root device type: ebs Virtualization type: hvm ENA Enabled: Yes
rem Available on free tier

rem lu: Nov-2-2018

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
  --image-id ami-050202fb72f001b47 ^
  --instance-type t2.micro ^
  --key-name TerraformTest2 ^
  --security-group-ids sg-06fbc60e67d4aebbe ^
  --subnet-id subnet-8e0b7181 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Windows_2016}]"
  --user-data file://my_script.sh

exit/b



::_

:create_test_security_group

set fp=* Create test security group.

rem lu: Nov-19-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name "Test Security Group" ^
  --description "Test Security Group for EC2 instances to allow ports 22, 88 and 443"

rem Group ID: sg-0fe9ba05e51b1d922

exit/b



::_

:create_security_group_id

set fp=* Create security group.

rem lu: Dec-20-2018

echo.
echo %fp%

call n vpc_id

echo.
aws ec2 create-security-group --group-name EC2SecurityGroup ^
  --description "Security Group for EC2 instances to allow ports 22, 88, 443, and 3389." ^
  --vpc-id %vpc_id%

exit/b



::_

:create_test_security_group

set fp=* Create test security group.

rem lu: Nov-19-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name "Test Security Group" ^
  --description "Test Security Group for EC2 instances to allow ports 22, 88 and 443"

rem Group ID: sg-0fe9ba05e51b1d922

exit/b



::_

:delete_security_group

:sg_delete

set fp=* Delete security group.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.

aws ec2 delete-security-group --group-name EC2SecurityGroup

exit/b



::_

:autht1

set fp=* Authorize test secrurity group ingress.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name "Test Security Group" --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32

exit/b



::_

:autht2

set fp=* Authorize test secrurity group ingress. - 2nd port

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name "Test Security Group" --protocol tcp ^
  --port 80 --cidr 0.0.0.0/0

exit/b



::_

:auth1_id

set fp=* Authorize secrurity group ingress.

rem lu: Nov-2-2018

echo.
echo %fp%

call n sg_id

aws ec2 authorize-security-group-ingress --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32 --group-id %sg_id%

exit/b



::_

:auth2_id

set fp=* Authorize secrurity group ingress. - 2nd port

rem lu: Nov-2-2018

echo.
echo %fp%

call n sg_id

aws ec2 authorize-security-group-ingress --protocol tcp ^
  --port 80 --cidr 0.0.0.0/0 --group-id %sg_id%

exit/b



::_

:auth3_id

set fp=* Authorize secrurity group ingress. - 3rd port.

rem lu: Dec-20-2018

echo.
echo %fp%

call n sg_id

aws ec2 authorize-security-group-ingress --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0 --group-id %sg_id%

exit/b



::_

:auth4_id

set fp=* Authorize secrurity group ingress. - 4th port for RDP connection.

rem lu: Dec-11-2018

echo.
echo %fp%

call n sg_id

aws ec2 authorize-security-group-ingress --protocol tcp ^
  --port 3389 --cidr 0.0.0.0/0 --group-id %sg_id%

exit/b



::_

:auth1

set fp=* Authorize secrurity group ingress.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32

exit/b



::_

:auth2

set fp=* Authorize secrurity group ingress. - 2nd port

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 80 --cidr 0.0.0.0/0

exit/b



::_

:auth3

set fp=* Authorize secrurity group ingress for 3rd port, 443.
rem qq-1

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0

exit/b



::_

:auth4

set fp=* Authorize secrurity group ingress for 4th port,  RDP connection on port 3389.

rem lu: Dec-11-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 3389 --cidr 0.0.0.0/0

exit/b



::_

:autht3

set fp=* Authorize test secrurity group ingress. - 3rd port.

rem lu: Nov-19-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name "Test Security Group" --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0

exit/b



::_

:dr

set fp=* Describe regions.

rem lu: Dec-11-2018

echo.
echo %fp%

echo.
aws ec2 describe-regions

exit/b



::_

:deim

set fp=* Describe images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description,Values=*Amazon Linux 2*" ^
  "Name=owner-alias,Values=amazon"

exit/b



::_

:deim2

set fp=* Describe images with PostgreSQL.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description,Values=*Postgre*" ^
  "Name=owner-alias,Values=amazon"

exit/b



::_

:run_linux

set fp=* Run Linux instance.

rem lu: Nov-2-2018

echo.
echo %fp%

call td tfkeys

call %0 check_pem_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances --image-id ami-00b94673edfccb7ca --count 1 ^
  --instance-type t2.micro --key-name TerraformTest2 ^
  --security-group-ids sg-06fbc60e67d4aebbe ^
  --subnet-id subnet-8e0b7181 ^
  --user-data file://my_script.sh 
  --tag-specifications ^
  'ResourceType=instance,Tags=[{Key=webserver,Value=production}]'

exit/b



::_

:delete_instance

set fp=* Terminate EC2 instance. (delete instance skw)

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws ec2 terminate-instances --instance-ids i-056508e5569ebfb4d

exit/b



::_

:create_db

set fp=* Create database

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws rds create-db-instance ^
  --db-instance-identifier sg-cli-test ^
  --allocated-storage 20 ^
  --db-instance-class db.m1.small ^
  --engine mysql ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



::_

:create_db_maria

set fp=* Create database

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws rds create-db-instance ^
  --db-instance-identifier sg-cli-test ^
  --allocated-storage 20 ^
  --db-instance-class db.m1.small ^
  --engine mysql ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



::_

:d_sg_refs

set fp=* Describe sg refs.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.

aws ec2 describe-security-group-references --group-id sg-0e67f09ea592e68ff

exit/b



:_ (!rfsp) (mov-6)