:_

@echo off



:_

set filep=* A wrapper around Chef's command line utility.



:_

set fp=* Route callers.

if "%~1" == "" goto cv

if "%~1" == "/?" goto help

goto %1



:_

:help

echo.
echo %filep%

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1 (Optional): Alias function to run.

echo.
echo %parameter_1%

exit/b



:_

:gen_repo

:gero

set fp=* Generate repo.

rem lu: Mar-4-2019

echo.
echo %fp%

echo.
chef generate repo %2

exit/b



:_

:gen_cook

set fp=* Generate cookbook.

rem lu: Mar-4-2019

echo.
echo %fp%

echo.
chef generate cookbook %2

exit/b



:_

:vers

set fp=* Version.

rem lu: Apr-10-2019

echo.
echo %fp%

echo.
chef -v

exit/b



:_

set fp=* List of kitchen commands.

Commands:
  kitchen console                                 # Kitchen Console!
  kitchen converge [INSTANCE|REGEXP|all]          # Change instance state to ...
  kitchen create [INSTANCE|REGEXP|all]            # Change instance state to ...
  kitchen destroy [INSTANCE|REGEXP|all]           # Change instance state to ...
  kitchen diagnose [INSTANCE|REGEXP|all]          # Show computed diagnostic ...
  kitchen doctor INSTANCE|REGEXP                  # Check for common system p...
  kitchen exec INSTANCE|REGEXP -c REMOTE_COMMAND  # Execute command on one or...
  kitchen help [COMMAND]                          # Describe available comman...
  kitchen init                                    # Adds some configuration t...
  kitchen list [INSTANCE|REGEXP|all]              # Lists one or more instances
  kitchen login INSTANCE|REGEXP                   # Log in to one instance
  kitchen package INSTANCE|REGEXP                 # package an instance
  kitchen setup [INSTANCE|REGEXP|all]             # Change instance state to ...
  kitchen test [INSTANCE|REGEXP|all]              # Test (destroy, create, co...
  kitchen verify [INSTANCE|REGEXP|all]            # Change instance state to ...
  kitchen version                                 # Print Kitchen's version i...

exit/b



:_

:knssl

:ssl

set fp=* SSL fetch

rem lu: Apr-25-2019

echo.
echo %fp%

echo.
knife ssl fetch

exit/b



:_

:kd

set fp=* Kitchen diagnose.

rem lu: Apr-30-2019

echo.
echo %fp%

echo.
kitchen diagnose --all

exit/b



:_+ Heartbeat commands.



::_

:h1

:kl

set fp=* Kitchen list. Heartbeat check.

rem lu: Apr-30-2019

rem Outcome: May-2-2019 2:41 PM

rem WARN: Unresolved specs during Gem::Specification.reset:
rem bundler (>= 1.10)
rem WARN: Clearing out unresolved specs.
rem Please report a bug if this causes problems.
rem Instance          Driver  Provisioner  Verifier  Transport  Last Action    Last Error
rem default-centos-7  Ec2     ChefZero     Inspec    Ssh        <Not Created>  <None>

rem Created this with "kc" and the .kitchen-aws.yml file, I think.

echo.
echo %fp%

echo.
kitchen list

exit/b



::_

:b

:h2

:knnl

:nl

:noli

set fp=* Kitchen node list. Heartbeat check. Chef server is breathing.

rem lu: May-6-2019

echo.
echo %fp%

echo.
knife node list

exit/b



::_

:er

:h3

:rs

:rspec

set fp=* ChefSpec/Rspec tests resources and recipes as part of a simulated chef-client run.

rem Results are compared to defined expectations.

rem lu: May-8-2019

echo.
echo %fp%

echo.
chef exec rspec

exit/b



::_

:h4

:kv

:v

set fp=* Kitchen verify.

rem lu: May-1-2019

echo.
echo %fp%

echo.
kitchen verify

exit/b



::_

:h5

set fp=* Verify curl.

rem lu: May-3-2019

echo.
echo %fp%

call cu t sr12

exit/b



:_

:kdest

set fp=* Kitchen destroy.

rem lu: May-2-2019

echo.
echo %fp%

echo.
kitchen destroy

exit/b



:_

:ks

set fp=* Kitchen setup.

rem lu: May-2-2019

echo.
echo %fp%

echo.
kitchen setup

exit/b



:_

:atr

set fp=* Localhost used in apache_test.rb.

rem lu: May-2-2019

echo.
echo %fp%

echo.
call e atr

exit/b



:_

:asr

set fp=* Apache_spec.rb.

rem lu: May-2-2019

echo.
echo %fp%

echo.
call e asr

exit/b



:_

:gen

set fp=* Chef generate

rem lu: May-2-2019

echo.
echo %fp%

echo.
chef generate

exit/b



:_

:kda

set fp=* Kitchen diagnose all.

rem lu: May-2-2019

echo.
echo %fp%

echo.
kitchen diagnose --all

exit/b



:_

:genc

set fp=* Generate cookbook.

rem lu: May-2-2019

echo.
echo %fp%

echo.
chef generate cookbook generated_cookbook

exit/b



:_

:gen_apache

set fp=* Chef generate recipe apache.

rem lu: May-2-2019

echo.
echo %fp%

echo.
chef generate recipe apache

exit/b



:_

:gti

set fp=* Chef generate template.

rem lu: May-2-2019

echo.
echo %fp%

echo.
chef generate template index.html

exit/b



:_

:ga

set fp=* Chef generate attribute.

rem lu: May-2-2019

echo.
echo %fp%

echo.
chef generate attribute default

exit/b



:_

:test

set fp=* Kitchen test.

rem lu: May-6-2019

rem Doesn't work because we aren't allowed to destroy instances.

echo.
echo %fp%

echo.
kitchen test

exit/b



:_

:genf

set fp=* Generate file.

rem lu: May-7-2019

echo.
echo %fp%

echo.
chef generate file

exit/b



:_

:kc

set fp=* Kitchen create.

rem lu: Apr-30-2019

echo.
echo %fp%

echo.
kitchen create --no-color

exit/b



:_

:capp

set fp=* Chef apply.

rem lu: May-13-2019

echo.
echo %fp%

if "%~2" == "" (
  echo.
  echo * Percent 2, the name of the recipe you wish to run, is a required field.
  exit/b
)

echo.
chef-apply %2

exit/b



:_

:conv

:converge

set fp=* Kitchen converge.

rem lu: May-13-2019

rem Outcome: >>>>>> Failed to complete #converge action: [403 "Forbidden"] on default-centos-7
rem Converge creates an instance, which surprised me. May-3-2019

echo.
echo %fp%

call m specific_file_presence .kitchen-aws.yml

if %errorlevel% == 1 (
  call m clear_errorlevel_silently
  exit/b
)

echo.
kitchen converge centos-7 --no-color

exit/b



:_

:krl

set fp=* Knife recipe list.

rem lu: Jun-4-2019

rem This worked on Jun-4-2019.

echo.
echo %fp%

echo.
knife recipe list

exit/b



:_

:shro

set fp=* Show role information.

rem lu: Jun-7-2019

echo.
echo %fp%

echo.
knife role show cart_api_and_ui_only

exit/b



:_

:upco_mine

:upl

set fp=* Upload cookbooks.

rem lu: May-6-2019

echo.
echo %fp%

rem call td cc

echo.
rem knife upload cookbooks
knife cookbook upload cart_cookbook -o .\ --force

exit/b



:_

:upco

set fp=* Upload cookbook command from Sean.

rem lu: Nov-6-2019

rem The following error message is why the cookbook is in a weird path.
rem ERROR: Could not find cookbook cart in your cookbook path, skipping it

rem This worked!

echo.
echo %fp%

call n caco
set cbf_cookbook_path=%cbf_path%

call td chef

echo.
@echo on
knife cookbook upload cart -o c:\cookbook_test
@echo off

exit/b



:_ (!rfsp) (mov-6)