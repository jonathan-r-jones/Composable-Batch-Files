:_

@echo off



:_

set filep=* AWS-related tasks.



:_

set fp=* Route callers.

if "%~1" == "" goto b

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Parameter 1: Function to execute. If left blank, heartbeat is checked.

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

:h

set fp=* AWS help.

rem lu: Jan-31-2019

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

:env

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

:d_im

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

:set_instance_id

set fp=* Deprecated. Use call n %? instead. Set AWS instance id.

rem lu: Mar-18-2019

echo.
echo %fp%

rem Set default instance ID to Jenkins server.
set cbf_instance_id=i-0bce1b3771799a4ed

rem Bee Clone
if "%~2" == "bc" set cbf_instance_id=i-04499acea0fa9f3a4

rem CentOS (!sid)
if "%~2" == "ce" set cbf_instance_id=i-0f7c7db92897103c5

rem iJenkins
if "%~2" == "ij" set cbf_instance_id=i-05a46eb9d1166d95f

rem Jenkins
if "%~2" == "je" set cbf_instance_id=i-0bce1b3771799a4ed

rem Jenkins Mimic
if "%~2" == "jm" set cbf_instance_id=i-0327d0c33cef79f33

rem NewJenkins, orange sunset
if "%~2" == "nj" set cbf_instance_id=i-072a65f07b004f9fd

rem Ubuntu - gaws_feb-15-2019_0515_Ubuntu
if "%~2" == "ub" set cbf_instance_id=i-0ce1f47a5dcd7f7b0

rem Ubuntu 3
if "%~2" == "ub3" set cbf_instance_id=i-04c9959fe9334ca57

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

:connect_old

set fp=* Connect to my instance from the command line!

rem lu: Dec-12-2018

echo.
echo %fp%

call x je_server

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
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=small_test_Feb_1_2019}]"
  --user-data file://my_script.sh

exit/b



:_+ Describe functions.



::_

:d_ins

set fp=* Describes instances.

rem lu: Dec-19-2018

echo.
echo %fp%

echo.
aws ec2 describe-instances --filters "Name=key-name,Values=cart*"
rem aws ec2 describe-instances --filters "Name=key-name,Values=cart*"

exit/b



::_

:d_ins_orig

set fp=* Describes instances.

rem lu: Dec-19-2018

echo.
echo %fp%

echo.
aws ec2 describe-instances --color off

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

set fp=* Describe security groups and pipe to file.

rem lu: Dec-11-2018

echo.
echo %fp%

call an me

set cbf_filename=%temp%\describe_sgs.txt

call aws ec2 describe-security-groups>%cbf_filename%

call m associate_cbf_parameter_to_cbf_filename

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

:d_insp

set fp=* Describes instances and pipe to file.

rem lu: Dec-19-2018

echo.
echo %fp%

call an np

set cbf_filename=%temp%\describe_instances.txt

call aws ec2 describe-instances>%cbf_filename%

call m associate_cbf_parameter_to_cbf_filename

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

call m associate_cbf_parameter_to_cbf_filename

call r

exit/b



::_

:b

:d

:d_su

:d_sub

:describe_subnets

:desu

:subnets

set fp=* Describe subnets. When you choose an AWS subnet, you are choosing the availability ^
zone. Also, a way to say "Is Amazon breathing?". :) Can we talk to Amazon? Like a health check.

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

set fp=* Authorize security group ingress for 1st port, SSH traffic on port 22.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32

exit/b



::_

:auth2

set fp=* Authorize security group ingress for 2nd port, HTTP traffic on port 80.

rem lu: Dec-30-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 80 --cidr 0.0.0.0/0

exit/b



::_

:auth3

set fp=* Authorize security group ingress for 3rd port, HTTPS traffic on port 443.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name EC2SecurityGroup --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0

exit/b



::_

:auth4

set fp=* Authorize security group ingress for 4th port, RDP connection traffic on port 3389.

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

set fp=* Describe images and pipe to file. This creates 150 megabyte file!

rem lu: Jan-31-2019

echo.
echo %fp%

set cbf_filename=%temp%\describe_images.txt

aws --output table ec2 describe-images>%cbf_filename%

call m associate_cbf_parameter_to_cbf_filename

call r

exit/b



::_

:deim_o

set fp=* Describe images.

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws --output table ec2 describe-images --filters "Name=description,Values=*Amazon Linux 2*" ^
  "Name=owner-alias,Values=amazon"

exit/b



::_

:deim_pg

:d_pg

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



:_+ Set up New Jenkins



::_

:nj_create_security_group

:csg

set fp=* Create security group.

rem lu: Jan-4-2019

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name NewJenkinsSecurityGroup ^
  --description "Security Group for EC2 instances to allow ports 22, 88 and 443"

exit/b



::_

:nj_auth1

set fp=* Authorize secrurity group ingress. Specify my local IP Address as cidr.

rem lu: Nov-2-2018

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name NewJenkinsSecurityGroup --protocol tcp ^
  --port 22 --cidr 172.54.125.8/32

exit/b



::_

:nj_auth2

set fp=* Authorize secrurity group ingress. - 2nd port

rem lu: Jan-4-2019

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name NewJenkinsSecurityGroup --protocol tcp ^
  --port 80 --cidr 0.0.0.0/0

exit/b



::_

:nj_auth3

set fp=* Authorize secrurity group ingress. - 3rd port.

rem lu: Jan-4-2019

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name NewJenkinsSecurityGroup --protocol tcp ^
  --port 443 --cidr 0.0.0.0/0

exit/b



::_

:nj_auth4

set fp=* Authorize secrurity group ingress. - 4th port for RDP connection.

rem lu: Jan-4-2019

echo.
echo %fp%

aws ec2 authorize-security-group-ingress --group-name NewJenkinsSecurityGroup --protocol tcp ^
  --port 3389 --cidr 0.0.0.0/0

exit/b



::_

:ri_new_jenkins

set fp=* Run instance t3 medium Windows OS.

rem lu: Jan-4-2019

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
  --security-group-ids sg-025758dcc49a9688a ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=New_Jenkins_Jan_4_2019}]"
  --user-data file://my_script.sh

exit/b



:_

:vers

set fp=* Version.

rem lu: Jan-8-2019

echo.
echo %fp%

echo.
aws --version

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



:_

:ri_feb-1-2019

set fp=* Run small test instance on GovCloud.

rem lu: Feb-1-2019

rem Community AMI RedHat-7.6_x86_64 - ami-0f05ffda83f1c5a2a [Copied ami-67b5d606 from us-gov-west-1]
rem RedHat-7.6_x86_64 Root device type: ebs Virtualization type: hvm

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
  --image-id ami-0f05ffda83f1c5a2a ^
  --instance-type t3.nano ^
  --key-name kibble_balance_key_pair ^
  --security-group-ids sg-025758dcc49a9688a ^
  --subnet-id subnet-df0f0da7 ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=small_test_Feb_1_2019}]"
  --user-data file://my_script.sh

exit/b



:_

:ri_feb-1-2019_id

set fp=* Run small test instance on ic.

rem lu: Feb-1-2019

rem Red Hat Enterprise Linux 7.6 (HVM), SSD Volume Type - ami-a1d349c0
rem Red Hat Enterprise Linux version 7.6 (HVM), EBS General Purpose (SSD) Volume Type
rem Root device type: ebs Virtualization type: hvm

rem instance id: i-0ee6674f1356c148b

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
  --image-id ami-a1d349c0 ^
  --instance-type t1.micro ^
  --key-name cart-key ^
  --security-group-ids %sg_id% ^
  --subnet-id %subnet_id% ^
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=small_test_Feb_1_2019}]"
  --user-data file://my_script.sh

exit/b



:_+ Database-related family.



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

:db_help

set fp=* Help for databases.

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



::_

:cli_feb_1_postgres_test_db

set fp=* Create a database that mimics the connectable one.

rem This worked on GovCloud but not iCloud.

rem lu: Feb-1-2019

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
  --master-username myuser ^
  --master-user-password mypassword

exit/b



::_

:cli_feb_1_2019_postgres_test_db

set fp=* Create a database that mimics the connectable one. Needs db-subnet-group-name.

rem Doesn't work yet.

rem lu: Feb-1-2019

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-subnet-group-name ^
  --db-instance-identifier %instance_identifier%^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password mypassword

exit/b



:_

:postgres_database_from_cli_on_Feb_4_2019

set fp=* Create database.

rem lu: Feb-4-2019

echo.
echo %fp%

rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes.

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password mypassword

exit/b



::_

:postgres_2

set fp=* Create database.

rem lu: Feb-4-2019

echo.
echo %fp%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-instance-identifier Postgres-2 ^
  --db-instance-class db.t2.micro ^
  --db-name %database_name% ^
  --engine postgres ^
  --master-username myawsuser ^
  --master-user-password mypassword

exit/b



:_

:postgres2

set fp=* Create database. This asks the shortens the name because maybe the names are too long.

rem lu: Feb-4-2019

echo.
echo %fp%

rem This search and replace was necessary because database names can only contain underscores
rem and instance names can only contain dashes.

set database_name=%1

set instance_identifier=postgres-2

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password mypassword

exit/b



:_

:postgres_db_fr_cli_on_gaws_at_Feb_4_2019_0225

set fp=* Use as many defaults as possible.

rem lu: Feb-4-2019

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password mypassword

exit/b



:_

:postgres_db_fr_cli_on_gaws_asus_at_Feb_6_2019_0314

set fp=* Create database with multiple tags.

rem lu: Feb-6-2019

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password mypassword ^
  --tags "Key"="BillingCode","Value"="xyz123" ^
         "Key"="POC","Value"="test@test.com" ^
         "Key"="Version","Value"="1.0"

exit/b



:_

:postgres_db_fr_cli_on_gaws_asus_at_Feb_6_2019_0539

set fp=* Create database with multiple tags using Postgres Security Group.

rem lu: Feb-6-2019

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password mypassword ^
  --tags "Key"="BillingCode","Value"="xyz123" ^
         "Key"="POC","Value"="test@test.com" ^
         "Key"="Version","Value"="1.0"

exit/b



:_

:postgres_db_fr_cli_on_gaws_asus_at_Feb_6_2019_0314

set fp=* Create database with multiple tags.

rem lu: Feb-8-2019

rem Gotcha: When using the console and you specifty to "Create new security group.", that 
rem new security group will have an authorization for port number 5432, the default
rem connection port for PostgreSQL.

echo.
echo %fp%

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password mypassword ^
  --tags "Key"="BillingCode","Value"="xyz123" ^
         "Key"="POC","Value"="test@test.com" ^
         "Key"="Version","Value"="1.0"

exit/b



:_+ 3 Script functions needed to create a connectable PostgresDB.



::_

:create_security_group_for_db_on_gaws

set fp=* Create security group for db.

rem lu: Dec-20-2018

goto Feb-20-2019

Warning

If you use 0.0.0.0/0, you enable all IPv4 addresses to access your instance using SSH. If you 
use ::/0, you enable all IPv6 address to access your instance. This is acceptable for a short 
time in a test environment, but it's unsafe for production environments. In production, you 
authorize only a specific IP address or range of addresses to access your instance.

:Feb-20-2019

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name PostgresDevSecurityGroup ^
  --description "Security Group for Postgres use." ^
  --vpc-id vpc-af32d0c6


exit/b



::_

:auth5

set fp=* Authorize security group ingress for Postgres connection traffic on port 5432.

rem lu: Feb-12-2019

Warning

If you use 0.0.0.0/0, you enable all IPv4 addresses to access your instance using SSH. If you use ::/0, you enable all IPv6 address to access your instance. This is acceptable for a short time in a test environment, but it's unsafe for production environments. In production, you authorize only a specific IP address or range of addresses to access your instance.

echo.
echo %fp%

aws ec2 authorize-security-group-ingress ^
  --cidr 0.0.0.0/0 ^
  --group-id sg-06a257b836873b16d ^
  --port 5432 ^
  --protocol tcp

exit/b



::_

:postgres_db_fr_cli_on_gaws_asus_at_Feb_12_2019_0512

set fp=* Create database with multiple tags using Postgres Security Group.

rem This worked! I think this may be the first time I created a PostgresSQL database entirely
rem from script, and didn't use the console.

rem lu: Feb-6-2019

echo.
echo %fp%

call %0 set_profile kb

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password cartpass ^
  --tags ^
    "Key"="Application","Value"="CART" ^
    "Key"="BillingCode","Value"="xyz123" ^
    "Key"="Environment","Value"="dv" ^
    "Key"="POC","Value"="test@gmail.com" ^
    "Key"="Portfolio","Value"="ABC" ^
    "Key"="Version","Value"="1.0" ^
  --vpc-security-group-ids sg-06a257b836873b16d

exit/b



:_

:gaws_feb-12-2019_0931

set fp=* Fix tag issue with instances.

rem lu: Feb-12-2019

rem This worked.

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-0f05ffda83f1c5a2a ^
  --instance-type t3.nano ^
  --key-name %cbf_file% ^
  --security-group-ids sg-4320d92a ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ResourceType=instance,Tags=[{Key=Name,Value=gaws_feb-12-2019_0931}]

exit/b



:_

:gaws_feb-12-2019_0935

set fp=* Fix tag issue with instances.

rem lu: Feb-12-2019

rem This worked.

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-0f05ffda83f1c5a2a ^
  --instance-type t3.nano ^
  --key-name %cbf_file% ^
  --security-group-ids sg-4320d92a ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Name,Value=Test},{Key=POC,Value=Bill}]

exit/b



:_

:gaws_feb-12-2019_1006

set fp=* Create instance with multiple tags.

rem lu: Feb-12-2019

rem This worked.

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-0f05ffda83f1c5a2a ^
  --instance-type t3.nano ^
  --key-name %cbf_file% ^
  --security-group-ids sg-4320d92a ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Application,Value=app},{Key=BillingCode,Value=Bill},{Key=Environment,Value=dv},{Key=Name,Value=instancename},{Key=Portfolio,Value=ROE},{Key=ResourcePOC,Value=tom@test.com}]

exit/b



:_

:gaws_feb-20-2019_1042_Any_Linux

set fp=* Create an instance that I can use to practice my Linux CLI.

rem lu: Feb-20-2019

rem Amazon Linux 2 AMI (HVM), SSD Volume Type - ami-fff7118e

rem Could not connect to the endpoint URL: "https://ec2.us-gov-east-1b.amazonaws.com/"

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-fff7118e ^
  --instance-type t3.medium ^
  --key-name %cbf_file% ^
  --security-group-ids sg-0d72c1ec60ee3852d ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Application,Value=app},{Key=BillingCode,Value=Bill},{Key=Environment,Value=dv},{Key=Name,Value=%1},{Key=Portfolio,Value=ROE},{Key=ResourcePOC,Value=tom@test.com}]

exit/b



:_+ 3 Script functions needed to create a connectable Linux server.



::_

:create_security_group_for_linux_on_gaws_3

set fp=* Create security group for Linux 3.

rem lu: Feb-25-2019

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name LinuxDevSecurityGroup3 ^
  --description "Security Group version 3 for testing Linux use." ^
  --vpc-id vpc-af32d0c6

exit/b



::_

:auth_Feb-25-2019

set fp=* Authorize security group ingress for Linux connection traffic on port 22.

rem lu: Feb-25-2019

echo.
echo %fp%

aws ec2 authorize-security-group-ingress ^
  --cidr 10.0.0.0/8 ^
  --group-id "sg-03ab419874a9a2ea1" ^
  --port 22 ^
  --protocol tcp

exit/b



::_

:gaws_feb-25-2019_1207_Ubuntu_3

set fp=* Create an instance with an updated security group.

rem lu: Feb-25-2019

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-39a64048 ^
  --instance-type t3.medium ^
  --key-name %cbf_file% ^
  --security-group-ids sg-03ab419874a9a2ea1 ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Application,Value=app},{Key=BillingCode,Value=Bill},{Key=Environment,Value=dv},{Key=Name,Value=%1},{Key=Portfolio,Value=ROE},{Key=ResourcePOC,Value=tom@test.com}]

exit/b



:_+ Ubunto 1. This works. 3 Script functions needed to create a connectable Linux server.



::_

:create_security_group_for_linux_on_gaws

set fp=* Create security group for Linux.

rem lu: Feb-20-2019

goto Feb-20-2019.2

Warning

If you use 0.0.0.0/0, you enable all IPv4 addresses to access your instance using SSH. If you 
use ::/0, you enable all IPv6 address to access your instance. This is acceptable for a short 
time in a test environment, but it's unsafe for production environments. In production, you 
authorize only a specific IP address or range of addresses to access your instance.

:Feb-20-2019.2

echo.
echo %fp%

echo.
aws ec2 create-security-group --group-name LinuxDevSecurityGroup ^
  --description "Security Group for testing Linux use." ^
  --vpc-id vpc-af32d0c6


exit/b



::_

:auth_Feb-20-2019

set fp=* Authorize security group ingress for Linux connection traffic on port 22.

rem lu: Feb-20-2019

echo.
echo %fp%

aws ec2 authorize-security-group-ingress ^
  --cidr 0.0.0.0/0 ^
  --group-id "sg-0954b6bc75f88a5ed" ^
  --port 22 ^
  --protocol tcp

exit/b



::_

:gaws_feb-15-2019_0515_Ubuntu

set fp=* Create an instance that I can use to practice my Linux CLI.

rem lu: Feb-15-2019

rem This worked.

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-39a64048 ^
  --instance-type t3.medium ^
  --key-name %cbf_file% ^
  --security-group-ids sg-4320d92a ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Application,Value=app},{Key=BillingCode,Value=Bill},{Key=Environment,Value=dv},{Key=Name,Value=%1},{Key=Portfolio,Value=ROE},{Key=ResourcePOC,Value=tom@test.com}]

exit/b



::_

:postgres_db_fr_cli_on_gaws_asus_at_Feb_12_2019_0512

set fp=* Create database with multiple tags using Postgres Security Group.

rem This worked! I think this may be the first time I created a PostgresSQL database entirely
rem from script, and didn't use the console.

rem lu: Feb-6-2019

echo.
echo %fp%

call %0 set_profile kb

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password cartpass ^
  --tags ^
    "Key"="Application","Value"="CART" ^
    "Key"="BillingCode","Value"="xyz123" ^
    "Key"="Environment","Value"="dv" ^
    "Key"="POC","Value"="test@gmail.com" ^
    "Key"="Portfolio","Value"="ABC" ^
    "Key"="Version","Value"="1.0" ^
  --vpc-security-group-ids sg-06a257b836873b16d

exit/b



:_

:4.5

set fp=* Connect to any Linux server.

rem lu: Feb-20-2019

echo.
echo %fp%

call n git_user_bin

set git_user_bin=%cbf_path%

call td tfkeys

echo.

rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@ec2-18-253-75-81.us-gov-east-1.compute.amazonaws.com

rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ec2-18-253-75-81.us-gov-east-1.compute.amazonaws.com

rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@ec2-18-253-75-81.us-gov-east-1.compute.amazonaws.com

rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@ec2-18-253-75-81.us-gov-east-1.compute.amazonaws.com

rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@ec2-18-253-69-77.us-gov-east-1.compute.amazonaws.com

rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ec2-18-253-69-77.us-gov-east-1.compute.amazonaws.com

"%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ec2-user@ec2-18-253-69-77.us-gov-east-1.compute.amazonaws.com

rem ec2user@172.31.7.105

exit/b



:_

:delete_instance

set fp=* Terminate EC2 instance. (delete instance skw)

rem lu: Mar-28-2019

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Aborted. You must specify an instance to delete.
  exit/b
)

call ni %2

echo.
aws ec2 terminate-instances --instance-ids %cbf_instance_id%

exit/b



:_+ Profiles

:profiles, profs: skw



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

if "%~2" == "cd" set AWS_PROFILE_NAME=cli_demo_user
if "%~2" == "cl" set AWS_PROFILE_NAME=cli_user
if "%~2" == "kb" set AWS_PROFILE_NAME=kibble_balance
if "%~2" == "pr" set AWS_PROFILE_NAME=procon_user
if "%~2" == "te" set AWS_PROFILE_NAME=terraform_user

exit/b



::_

:clpr

set fp=* Clear AWS Profile.

rem lu: Dec-14-2018

echo.
echo %fp%

set aws_profile=

echo.
echo * AWS Profile: %aws_profile%

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

:cfg

set fp=* Configure

rem lu: Nov-2-2018

echo.
echo %fp%

echo.
aws configure

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

:ap_cd

:cp_cd

set fp=* Add cli_demo_user profile.

rem lu: Feb-20-2019

echo.
echo %fp%

echo.
aws configure --profile cli_demo_user

exit/b



::_

:anp

set fp=* Add new profile.

rem Configure new profile, add profile: skw

rem lu: Feb-20-2019

echo.
echo %fp%

echo.
aws configure

call %0 set_profile %2

call %0 sh

exit/b



::_

:ap_kb

:cp_kb

set fp=* Configue Kibble Balance.

rem lu: Feb-20-2019

echo.
echo %fp%

echo.
aws configure --profile kibble_balance

exit/b



::_

:cp_de

set fp=* Configue default. Doesn't work properly.

rem lu: Feb-20-2019

echo.
echo %fp%

echo.
aws configure --profile default

exit/b



::_

:sh

:shpr

set fp=* Show current user profile. (skw show profile, show_profile)

rem lu: Mar-18-2019

echo.
echo %fp% AWS Profile: %AWS_PROFILE%

echo.
aws configure list

exit/b



::_

:set_profile

:sp

:sepr

set fp=* Set profile.

rem lu: Jan-8-2019

echo.
echo %fp%

if "%~2" == "" (
  echo * Profile name is required.
  exit/b
)

call %0 look_up_profile_name %2

set aws_profile=%aws_profile_name%

echo.
echo * AWS PROFILE: %aws_profile%

call %0 sh

exit/b



::_

:ac

:creds

:vcf

:vi

:vipr

set fp=* View credentials file.

rem lu: Jan-8-2019

echo.
echo %fp%

call me aws_creds

exit/b



:_

:postgres_db_fr_cli_on_gaws_Apr_25_2019_218

set fp=* Create database with multiple tags using Postgres Security Group.

echo.
echo %fp%

rem This worked.

call %0 set_profile kb

set database_name=%1

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password crabtree ^
  --tags ^
    "Key"="Application","Value"="Crab" ^
    "Key"="BillingCode","Value"="xyz123" ^
    "Key"="Environment","Value"="dv" ^
    "Key"="POC","Value"="test@gmail.com" ^
    "Key"="Portfolio","Value"="ABC" ^
    "Key"="Version","Value"="1.0" ^
  --vpc-security-group-ids sg-06a257b836873b16d

exit/b



:_

:postgres_db_fr_cli_on_gaws_Apr_25_2019_224

set fp=* Create database with multiple tags using Postgres Security Group.

echo.
echo %fp%

set database_name=crabdev

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.micro ^
  --engine postgres ^
  --master-username myuser ^
  --master-user-password crabtree ^
  --tags ^
    "Key"="Application","Value"="Crab" ^
    "Key"="BillingCode","Value"="xyz123" ^
    "Key"="Environment","Value"="dv" ^
    "Key"="POC","Value"="test@gmail.com" ^
    "Key"="Portfolio","Value"="ABC" ^
    "Key"="Version","Value"="1.0" ^
  --vpc-security-group-ids sg-06a257b836873b16d

exit/b



:_

:postgres_db_fr_cli_on_gaws_May_2_2019_329

set fp=* Create database with multiple tags using Postgres Security Group.

echo.
echo %fp%

set database_name=crabfq

set instance_identifier=%database_name:_=-%

echo.
aws rds create-db-instance ^
  --allocated-storage 20 ^
  --db-name %database_name% ^
  --db-instance-identifier %instance_identifier% ^
  --db-instance-class db.t2.medium ^
  --engine postgres ^
  --master-username %database_name%user ^
  --master-user-password %database_name%pass ^
  --tags ^
    "Key"="Application","Value"="Crab" ^
    "Key"="BillingCode","Value"="xyz123" ^
    "Key"="Environment","Value"="dv" ^
    "Key"="POC","Value"="test@gmail.com" ^
    "Key"="Portfolio","Value"="ABC" ^
    "Key"="Version","Value"="1.0" ^
  --vpc-security-group-ids sg-06a257b836873b16d

exit/b



:_

:gaws_May-13-2019_centos

set fp=* Create an instance that I can use to practice Chef.

echo.
echo %fp%

call td tfkeys

set cbf_file=kibble_balance_key_pair

call m specific_file_presence %cbf_file%.pem

if %errorlevel% == 1 (
  exit/b
)

echo.
aws ec2 run-instances ^
  --count 1 ^
  --image-id ami-08521bc84009eae26 ^
  --instance-type d2.xlarge ^
  --key-name %cbf_file% ^
  --security-group-ids sg-4320d92a ^
  --subnet-id subnet-8c04e4e5 ^
  --tag-specifications ^
    ResourceType=instance,Tags=[{Key=Application,Value=app},{Key=BillingCode,Value=Bill},{Key=Environment,Value=dv},{Key=Name,Value=%1},{Key=Portfolio,Value=ROE},{Key=ResourcePOC,Value=tom@test.com}]

exit/b



:_

:conn

set fp=* Connect.

rem lu: May-23-2019

echo.
echo %fp%

if "%~1" == "" (
  echo. 
  echo Percent 1, server alias, is required.
  exit/b
)

call n git_user_bin

set git_user_bin=%cbf_path%

call td tfkeys

set cbf_public_dns=

call n %2

if "%cbf_public_dns%" == "" (
  echo. 
  echo * Error: CBF Public DNS is not defined for server '%1'.
  exit/b
)

rem Change this line to your ip address.
set public_dns=%cbf_public_dns%

echo.

"%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ubuntu@%cbf_public_dns%
rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" root@ec2-18-253-135-154.us-gov-east-1.compute.amazonaws.com
rem "%git_user_bin%"\ssh -i "kibble_balance_key_pair.pem" ec2-18-253-135-154.us-gov-east-1.compute.amazonaws.com

exit/b



:_+ Common Instance Operations



::_

:stat

set fp=* Describe status for instance "%2".

rem lu: Mar-8-2019

echo.
echo %fp%

call m validate_instance %2

if %errorlevel% == 1 (
  call m clear_errorlevel_silently 
  exit/b
)

echo.
aws ec2 describe-instance-status --instance-ids %cbf_instance_id%

exit/b



::_

:star

:start

set fp=* Start instance "%2".

rem lu: Mar-30-2020

echo.
echo %fp%

call m validate_instance %2

if %errorlevel% gtr 0 exit/b

echo.
call aws ec2 start-instances --instance-ids %cbf_instance_id%

rem call %0 tag %2 AutoStopStartInstance True

call %0 tag %2 Comment None
                                       
exit/b



::_

:rebo

set fp=* Reboot instance "%2". This doesn't seem to work. Apr-13-2020

rem lu: Apr-9-2020

echo.
echo %fp%

exit/b

call m validate_instance %2

if %errorlevel% gtr 0 exit/b

echo.
call aws ec2 reboot-instances --instance-ids %cbf_instance_id%

rem call %0 tag %2 AutoStopStartInstance True

call %0 tag %2 Comment None
                                       
exit/b



::_

:stop

set fp=* Stop instance "%2".

rem lu: Mar-30-2020

echo.
echo %fp%

call m validate_instance %2

if %errorlevel% == 1 (
  call m clear_errorlevel_silently 
  exit/b
)

echo.
call aws ec2 stop-instances --instance-ids %cbf_instance_id%

call %0 tag %2 AutoStopStartInstance False

call %0 tag %2 Comment "Testing in progress."

exit/b



::_

:desc

set fp=* Describe a particular instance: "%2".

rem lu: Oct-31-2019

cls

echo.
echo %fp%

call m validate_instance %2

if %errorlevel% == 1 (
  call m clear_errorlevel_silently 
  exit/b
)

echo.
call aws ec2 describe-instances --instance-ids %cbf_instance_id%
                                       
exit/b



:_+ Tags from a.bat



::_

:tag

:add_tag

set fp=* Tag instance "%2" with key "%3" and value "%~4".

rem lu: Mar-30-2020

echo.
echo %fp%

if "%~4" == "" (
  echo.
  echo * This function requires 3 parameters. 2: Instance alias. 3. Key Name 4. Key value.
  exit/b
)

call m validate_instance %2

if %errorlevel% == 1 (
  call m clear_errorlevel_silently 
  exit/b
)

aws ec2 create-tags --resources %cbf_instance_id% --tags Key=%3,Value=%4

exit/b



::_

:delete_tag

set fp=* Delete Tag on instance "%2". Tag key "%3"

rem lu: Mar-25-2020

echo.
echo %fp%

if "%3" == "" (
  echo.
  echo * This function requires 2 final parameters. 2: Instance alias. 3. Key Name
  exit/b
)

if "%cbf_instance_id%" == "" (
  echo.
  echo * The cbf_instance_id is not defined for "%2".
  exit/b
)

aws ec2 delete-tags --resources %cbf_instance_id% --tags Key=%3

exit/b



::_

:old_tag

:tag_all

set fp=* Tag or retag all the tags on a resource.

rem lu: Feb-25-2019

echo.
echo %fp%

set cbf_resource_id=i-0ce1f47a5dcd7f7b0

call %0 tag_generic Application "Learn Linux."

call %0 tag_generic BillingCode mybillingcode

call %0 tag_generic Environment myenv

call %0 tag_generic Name w1Idvwebcar003

call %0 tag_generic Notes "This works. Warning: Belongs to a wide open security group."

call %0 tag_generic Portfolio TestPortfolio

call %0 tag_generic ResourcePOC theMan

exit/b



::_

:tag_one

set fp=* Change a single tag on a resource.

rem lu: Feb-25-2019

echo.
echo %fp%

set cbf_resource_id=i-0ce1f47a5dcd7f7b0

call %0 tag_generic Notes "Tough to say."

exit/b



::_

:retag

set fp=* Retag a resource.

rem lu: May-17-2019

echo.
echo %fp%

set cbf_instance_id=

call n sr21

if "%cbf_instance_id%" == "" (
  echo.
  echo * Error: Instance id not set.
  exit/b
)

aws ec2 create-tags --resources %cbf_instance_id% --tags Key=Name,Value=w1idvtempcrt021

rem These also work.
rem aws ec2 create-tags help>%temp%/j1.txt
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key=Name,Value=Production

rem Below here didn't work.
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags "ResourceType=instance,Tags=[{Key=Name,Value=xxss}]"
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags Key="Name", Value="testtt"
rem aws ec2 create-tags --resources i-0bce1b3771799a4ed --tags 'Key="[Name]",Value=test222'

exit/b



::_

:retag_unwanted_resource

set fp=* Retag unwanted resource.

rem lu: Feb-25-2019

echo.
echo %fp%

call n %2

if "%~2" == "" (
  echo.
  echo * Instance id is a required field.
  exit/b
)

set cbf_resource_id=%cbf_instance_id%

call %0 tag_generic BillingCode mybillingcode

call %0 tag_generic ResourceType "Unusable instance. Please delete me."

exit/b



::_

:ast

:slee

:sleep

set fp=* Add sleep tags to %2.

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo Error: Instance alias is required.
  exit/b
)

set cbf_instance_alias=%2

call a tag %cbf_instance_alias% AutoStartTime 6:00

if %errorlevel% gtr 0 exit/b

call a tag %cbf_instance_alias% AutoStopTime 19:00

call a tag %cbf_instance_alias% AutoStopStartInstance True

call a tag %cbf_instance_alias% WeekendStop True

exit/b



:_ (!rfsp) (mov-6)
