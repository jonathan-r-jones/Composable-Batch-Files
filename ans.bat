:_

@echo off



:_

set filep=* Ansible functions.



:_

set fp=* Route callers.

if -%~1- == -- goto help

if -%~1- == -/?- goto help

goto main_function



:_

:help

cls

echo.
echo %filep%

rem lu: 

echo.
echo Usage: %0 [space separated parameter(s)]

set parameter_1=Parameter 1: Name of the function you wish to run.

echo.
echo %parameter_1%

echo.
echo Batch file style: Multipurpose

exit/b

(!rfsp) (mov4)



:_
  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ______  ____
 (______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(____
 ____(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(______)(



:_

:Jul-30-2020_2_21_PM

ansible all -i hosts -u zs_ci_user -m ping --key-file /tmp/cart-np-key.pem

exit/b

>< >< Footnote:

Outcome: This worked! The Ansible slave returned "pong".



:_