:_

@echo off



:_

set filename_stands_for=* Perform Terraform-related tasks.



:_

set fp=* Add some whitespace.

echo.



:_

set fp=* Route callers.

if "%~1" == "" goto help s

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

echo Filename stands for: %filename_stands_for%

echo.
echo Last Updated: Oct-29-2018

echo.
echo Usage: %0 [Parameter 1]

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): 
set parameter_1=%parameter_1% 

echo.
echo %parameter_1%

set parameter_2=Parameter 2 (Optional): 
set parameter_2=%parameter_2% 

echo.
echo %parameter_2%

exit/b



:_

:ver

:vers

set fp=* Get the Terraform version number.

rem lu: Oct-29-2018

echo %fp%

echo.
terraform version

exit/b



:_

:plan_experimental

set fp=* Check Terraform plan status.

rem lu: Oct-29-2018

echo %fp%

echo.
terraform plan

exit/b



:_

:init

set fp=* Initialize Terraform. This downloads necessary or missing plugins, e.g. from Hashicorp.

rem lu: Oct-29-2018

echo %fp%

echo.
terraform init -no-color

exit/b



:_

:plan_chapter_2

set fp=* This execution plan can be reviewed prior to running apply to get a sense for what Terraform will do.

rem lu: Oct-29-2018

echo %fp%

echo.
terraform plan -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color

rem Old Way
rem terraform plan -var-file="..\terraform.tfvars" -no-color

exit/b



:_

:destroy_chapter_2

set fp=* Destroy a plan.

rem lu: Oct-29-2018

echo %fp%

echo.
terraform destroy -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color -auto-approve

rem Old Way
rem terraform destroy -var-file="..\terraform.tfvars" -no-color -auto-approve

exit/b



:_

:apply_chapter_2

set fp=* Execute a plan!

rem lu: Oct-29-2018

echo %fp%

echo.
terraform apply -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color -auto-approve

exit/b



:_

:shared_function

set fp=* Shared function.

rem lu: Oct-30-2018

echo %fp%

echo.

exit/b



:_+ Main Parts 12

rem The purpose of folder 12 was to try and do some the of the same Terrraform work I had been
rem doing on my personal AWS account but now do it on my AWS work account. I don't think I can achieve
rem this currently because my AWS work account does not have programmatic access, which
rem comes with the AWS access and secret keys, which I need for Terraform.


::_

:plan12

set fp=* Plan.

rem lu: Oct-30-2018

echo %fp%

echo.
terraform plan -var-file="%tfkeys%\terraform12.tfvars" -var "private_key_path=%tfkeys%\Cart_Test.pem" -no-color

exit/b



::_

:apply12

set fp=* Apply.

rem lu: Oct-30-2018

echo %fp%

echo.
terraform apply -var-file="%tfkeys%\terraform12.tfvars" -var "private_key_path=%tfkeys%\Cart_Test.pem" -no-color -auto-approve

exit/b



::_

:destroy12

set fp=* Destroy.

rem lu: Oct-30-2018

echo %fp%

echo.
terraform destroy -var-file="%tfkeys%\terraform12.tfvars" -var "private_key_path=%tfkeys%\Cart_Test.pem" -no-color -auto-approve

exit/b



:_+ Main Parts



::_

:p

:plan

set fp=* Plan.

rem lu: Oct-30-2018

echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform plan -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color

exit/b



::_

:a

:appl

:apply

set fp=* Apply.

rem lu: Oct-30-2018

echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform apply -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color -auto-approve

exit/b



::_

:d

:dest

:destroy

set fp=* Destroy.

rem lu: Oct-30-2018

echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform destroy -var-file="%tfkeys%\terraform.tfvars" -var "private_key_path=%tfkeys%\TerraformTest2.pem" -no-color -auto-approve

exit/b



:_

:check_tf_existence

set fp=* Check the current folder for the presence of Terraform file(s).

rem lu: Oct-31-2018

echo %fp%

if not exist *.tf (
  echo.
  echo * Error: No Terraform files exist in the current folder.
  exit/b 1
)

exit/b 0



:_

:cons

:console

:repl

set fp=* Terraform console.

rem lu: Nov-1-2018

echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform console

exit/b



:_

:fmt

set fp=* Format tf file.

rem lu: Nov-1-2018

echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform fmt

exit/b



:_

:refresh

set fp=* Refresh state file.

rem lu: Nov-1-2018

echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform refresh

exit/b



:_

:taint

set fp=* Manually mark a resource for recreation.

rem lu: Nov-1-2018

echo %fp%

call %0 check_tf_existence

if %errorlevel% == 1 (
  exit/b
)

echo.
terraform taint

exit/b



:_ (!rfsp) (mov-6)