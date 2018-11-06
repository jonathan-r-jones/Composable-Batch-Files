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
echo Parameter 1: Function to execute.

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
aws help

exit/b



:_

:wh

set fp=* Website help.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 website help

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



:_+ Full web parts process according to AWS CLI instructor.



::_

:create_security_group

:csg

set fp=* Create security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name EC2SecurityGroup ^
  --description "Security Group for EC2 instances to allow ports 22, 88 and 443"

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

set fp=* Authorize secrurity group ingress. - 3rd port.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0

exit/b



::_

:dsg

set fp=* Describe security group.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-security-groups --group-names EC2SecurityGroup

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

:desu

set fp=* Describe subnets.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws ec2 describe-subnets

exit/b



::_

:run_in_linux

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

:run

set fp=* Run Windows instance with tag.

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
  --user-data file://my_script.sh ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=Windows_Instance}]"
rem qq-1

exit/b



::_

:delete_instance

set fp=* Terminate instance. (delete instance skw)

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws ec2 terminate-instances --instance-ids i-056508e5569ebfb4d

exit/b



::_

:create_db

set fp=* Create database

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws rds create-db-instance --db-instance-identifier sg-cli-test ^
  --allocated-storage 20 ^
  --db-instance-class db.m1.small ^
  --engine mysql ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



:_

:sg_help_d

set fp=* Security group help.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.

aws ec2 delete-security-group help

exit/b



:_

:sg_help

set fp=* Security group help.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.

aws ec2 security-group help

exit/b



:_

:sg_ref

set fp=* Describe sg refs.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.

aws ec2 describe-security-group-references --group-id sg-0e67f09ea592e68ff

exit/b



:_

:sg_ref_help

set fp=* Describe sg refs.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.

aws ec2 describe-security-group-references help

exit/b



:_+ IAM Commands - User Information



::_

:cu

:create_user

set fp=* Create user.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
rem aws iam create-user --user-name mike
aws iam create-user --user-name cli_user

exit/b



::_

:delete_user

set fp=* Delete user.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
rem aws iam create-user --user-name mike
aws iam delete-user --user-name cli_user

exit/b



::_

:lak_c

set fp=* List access keys for cli_user.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam list-access-keys --user-name cli_user

exit/b



::_

:cak

set fp=* Create access key for cli_user.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam create-access-key --user-name cli_user

exit/b



::_

:create_group

:crgr

set fp=* Create group.

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

:gu

set fp=* Get user information.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws iam get-user --user-name mike

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
aws iam add-user-to-group --group-name admins --user-name cli_user

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

set fp=* List all s3 buckets.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 ls

exit/b



::_

:s3_h

set fp=* Help for S3

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws s3 help

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

:check_index_existence

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



:_+ Create scripts with pauses that creates and DESTROYS the entire environment.



::_

:e_c

set fp=* Create Envrionment 1.

rem lu: Nov-5-2018

echo.
echo %fp%

call %0 create_web_bucket

call %0 make_bucket_publicly_readable

call td cas

call %0 check_index_existence

if %errorlevel% == 1 (
  exit/b
)

call %0 copy_files_to_bucket

call %0 define_website

call %0 confirm

call sf cas

exit/b



::_

:e_d

set fp=* Delete Envrionment 1.

rem lu: Nov-5-2018

echo.
echo %fp%

call %0 delete_web_bucket

exit/b



:_+ Configure Family



::_

:scp

:sh

set fp=* Show current user profile.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws configure list

exit/b



::_

:cfg

:conf

set fp=* Configure

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure

exit/b



::_

:cfg_p

:su

:sp_p

:su_p

set fp=* Switch profile to procon_user.

rem lu: Nov-6-2018

echo.
echo %fp%

set AWS_PROFILE=proconn_user

call %0 scp

exit/b



::_

:cfg_c

:sp_c

:su_c

set fp=* Switch profile to cli_user.

rem lu: Nov-6-2018

echo.
echo %fp%

set AWS_PROFILE=cli_user

call %0 scp

exit/b



::_

:cfg_t

:sp_t

:su_t

set fp=* Switch profile to terraform_user.

rem lu: Nov-6-2018

echo.
echo %fp%

set AWS_PROFILE=terraform_user

call %0 scp

exit/b



::_

:cfg_pp

set fp=* Show proconn_user profile

rem lu: Nov-6-2018

echo.
echo %fp%

echo.
aws configure list --profile procon_user

exit/b



::_

:cfg_apc

set fp=* Add terraform_user profile. (create profile, add profile skw)

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure --profile cli_user

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

:cfg_a2

set fp=* Add proconn_user profile.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure --profile procon_user

exit/b



::_

:cfg_h

set fp=* Cfg help.

rem lu: Nov-5-2018

echo.
echo %fp%

echo.
aws configure help

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

:confirm

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

:e_d2

set fp=* Delete environment, part 2.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.

call %0 delete_security_group

exit/b



:_

Metadata: Track Size (!tsaw)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Nov-6-2018   1,352     13,665       75



:_

:e_c2

set fp=* Create environment, part 2.

rem lu: Nov-6-2018

echo.
echo %fp%

echo.

call %0 create_user

rem admins
call %0 create_group

call %0 attach_policy_ec2

call %0 attach_policy_s3

call %0 add_user_to_group

call %0 create_security_group

call %0 auth1

call %0 auth2

call %0 auth3


exit/b



:_ (!rfsp) (mov-6)