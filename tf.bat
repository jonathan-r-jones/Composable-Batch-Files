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
terraform plan -var-file="%keys%\Terraform\terraform.tfvars" -var "private_key_path=%keys%\Terraform\TerraformTest2.pem" -no-color

rem Old Way
rem terraform plan -var-file="..\terraform.tfvars" -no-color

exit/b



:_

:destroy_chapter_2

set fp=* Destroy a plan.

rem lu: Oct-29-2018

echo %fp%

echo.
terraform destroy -var-file="%keys%\Terraform\terraform.tfvars" -var "private_key_path=%keys%\Terraform\TerraformTest2.pem" -no-color -auto-approve

rem Old Way
rem terraform destroy -var-file="..\terraform.tfvars" -no-color -auto-approve

exit/b



:_

:apply_chapter_2

set fp=* Execute a plan!

rem lu: Oct-29-2018

echo %fp%

echo.
terraform apply -var-file="%keys%\Terraform\terraform.tfvars" -var "private_key_path=%keys%\Terraform\TerraformTest2.pem" -no-color -auto-approve

exit/b



:_

:shared_function

set fp=* Shared function.

rem lu: Oct-30-2018

echo %fp%

echo.

exit/b



:_

:plan

set fp=* Plan.

rem lu: Oct-30-2018

echo %fp%

echo.
terraform plan -var-file="%keys%\Terraform\terraform.tfvars" -var "private_key_path=%keys%\Terraform\TerraformTest2.pem" -no-color

exit/b



:_

:apply

set fp=* Execute.

rem lu: Oct-30-2018

echo %fp%

echo.
terraform apply -var-file="%keys%\Terraform\terraform.tfvars" -var "private_key_path=%keys%\Terraform\TerraformTest2.pem" -no-color -auto-approve

exit/b



:_

:destroy

set fp=* Destroy.

rem lu: Oct-30-2018

echo %fp%

echo.
terraform destroy -var-file="%keys%\Terraform\terraform.tfvars" -var "private_key_path=%keys%\Terraform\TerraformTest2.pem" -no-color -auto-approve

exit/b



:_