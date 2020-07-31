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

:Jul-31-2020_1_14_PM

ansible desl -i hosts -u zs_ci_user -m ping --key-file /tmp/cart-np-key.pem

exit/b

>< >< Footnote:

Outcome: This worked! Dev slave returned "pong".



:_

:vers

set fp=* Version ifno.

rem lu: Jul-31-2020

echo.
echo %fp%

echo.
ansible --version

exit/b



:_

:pvers

set fp=* Playbook Version info.

rem lu: Jul-31-2020

echo.
echo %fp%

ansible-playbook --version

exit/b



:_

:uptime

set fp=* %1.

rem lu: Jul-31-2020

echo.
echo %fp%

echo.
ansible all -i hosts -u zs_ci_user -m command -a "uptime" --key-file /tmp/cart-np-key.pem

exit/b



:_

:setup

set fp=* %1.

rem lu: Jul-31-2020

echo.
echo %fp%

echo.
ansible ansl -i hosts -u zs_ci_user -m setup --key-file /tmp/cart-np-key.pem

exit/b

>< >< Outcome: Returns a lot of rows.



:_+ Ping Pong



::_

:check_long

:first_long

set fp=* First command to run to make sure you can communcate. Long version.

ansible ansl -i hosts -u zs_ci_user -m ping --key-file /tmp/cart-np-key.pem

exit/b

>< >< Footnote:

Outcome: This worked! The Ansible slave returned "pong".



::_

:check

:first

:ping

rem lu: Jul-31-2020

set fp=* First command to run to make sure you can communcate.

ansible ansl -i hosts -u zs_ci_user -m ping

exit/b

>< >< Footnote:

Outcome: This worked! The Ansible slave returned "pong".

In the home folder I created a file called ".ansible.cfg" with the following contents:

[defaults]
private_key_file = /tmp/cart-np-key.pem



:_