:_

@echo off



:_

set fp=* Set password for non-production environments.

if /i not "%computername%"=="WIN-8D6B7BCCM06" set password="x"



:_

set fp=* Add echo.

echo.



:_

set fp=* Route callers.

if "%1" == "" goto help

if "%1" == "/?" goto help

if "%1" == "help" goto help

goto %1



:_

rem Metadata

rem File Purpose: This SQL (s) batch file is intended to be used for Mercury database related tasks.

rem Batch File Style: Parameter-Routing Driven

rem To run a command, use a single command line parameter corresponding to its batch file 
rem label, e.g. m run_sencha_app_build_testing would run the code block at that label.

rem Usage Note: Do not make internal calls to a composite function because that could cause a 
rem circular reference.

rem Having a written version of your work allows you to learn and improve over time.



:_

rem Begin exit locker.
 ___  ______  ______  ______  ______  ______  ______  ______  ______  ___
  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__
 (______)(______)(______)(______)(______)(______)(______)(______)(______)



:_

:exit

set fp= * Exit.

rem echo.
rem echo %fp%

exit



:_

:exitb

set fp= * Exit batch file but not command window.

rem echo.
rem echo %fp%

exit /b



:_

:exitp

set fp= * Exit with pause.

echo.
rem echo %fp%

title Done! - . . . paused . . . Press any key to continue

pause

exit



:_

:exitpb

set fp= * Pause then exit the batch file but not the command window.

rem echo.
rem echo %fp%

pause

exit /b



:_

rem Begin script body. (!sbody)
 ___  ______  ______  ______  ______  ______  ______  ______  ______  ___
  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__  __)(__
 (______)(______)(______)(______)(______)(______)(______)(______)(______)



:_

:sql

set fp=* Connect to MySQL Monitor.

rem Function Creation Date: May-9-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb

goto exitb



:_

:st

:shta

set fp=* Show tables.

rem Function Creation Date: May-16-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "show tables;"

goto exitb



:_

:on

set fp=* Turn active_mailhost on.

rem fcd: May-16-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercury_configuration set value='true' where item='active_mailhost';"

goto exitb



:_

:ori_ldap

set fp=* Use original LDAP hash.

rem fcd: May-16-2017

echo %fp%

echo.
set /P user_option=Enter the LDAP Hash to use: 
echo.

mysql -uroot -p%password% mercdb -e "update mercury_configuration set value='%user_option%' where item='ldap_hash';"

goto exitb



:_

:back_up

:bu

:budb

set fp=* Back up the database.

rem fcd: May-12-2017

echo %fp%

echo.
set /P user_option=Did you remember to update the admin basic profile field on the website? (y/n): 
echo.

if not "%user_option%"=="y" echo Aborting.
if not "%user_option%"=="y" goto exitb

cd c:\mercury\batch_files

java -cp . Get_timestamp_for_use_as_filename>%tmp%\mercury_date_as_filename.txt
set /p date_as_filename=<%tmp%\mercury_date_as_filename.txt

set m_filename=%computername%_%date_as_filename%.dmp

mysqldump -uroot -p mercdb > c:\mercury\backups\%m_filename%

if %errorlevel% == 0 echo.
if %errorlevel% == 0 echo Backup complete.

goto exitb



:_

:copa

set fp=* Start LDAP control panel.

rem fcd: Apr-26-2017

echo %fp%

call c:\Mercury\LDAP\OpenDS-2.2.1\bat\control-panel.bat

goto exitb



:_

:ld

:ldap

:rald

:raldap

:start_ldap

:start_open_ds

set fp=* Run LDAP service.

rem fcd: Apr-13-2017

echo %fp%
echo.

call c:\Mercury\LDAP\OpenDS-2.2.1\bat\start-ds.bat

goto exitb



:_

:ldap_svc

set fp=* Install OpenDS as a service.

rem fcd: May-12-2017

rem skw: Install LDAP as a service.

echo %fp%
echo.

cd C:\Mercury\LDAP\OpenDS-2.2.1\bat

windows-service.bat -e
echo.

goto exitb



:_

:mysql_help

set fp=* MySql help.

mysql  Ver 14.14 Distrib 5.7.17, for Win64 (x86_64)
Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Usage: mysql [OPTIONS] [database]
  -?, --help          Display this help and exit.
  -I, --help          Synonym for -?
  --auto-rehash       Enable automatic rehashing. One doesn't need to use
                      'rehash' to get table and field completion, but startup
                      and reconnecting may take a longer time. Disable with
                      --disable-auto-rehash.
                      (Defaults to on; use --skip-auto-rehash to disable.)
  -A, --no-auto-rehash
                      No automatic rehashing. One has to use 'rehash' to get
                      table and field completion. This gives a quicker start of
                      mysql and disables rehashing on reconnect.
  --auto-vertical-output
                      Automatically switch to vertical output mode if the
                      result is wider than the terminal width.
  -B, --batch         Don't use history file. Disable interactive behavior.
                      (Enables --silent.)
  --bind-address=name IP address to bind to.
  --character-sets-dir=name
                      Directory for character set files.
  --column-type-info  Display column type information.
  -c, --comments      Preserve comments. Send comments to the server. The
                      default is --skip-comments (discard comments), enable
                      with --comments.
  -C, --compress      Use compression in server/client protocol.
  -#, --debug[=#]     This is a non-debug version. Catch this and exit.
  --debug-check       This is a non-debug version. Catch this and exit.
  -T, --debug-info    This is a non-debug version. Catch this and exit.
  -D, --database=name Database to use.
  --default-character-set=name
                      Set the default character set.
  --delimiter=name    Delimiter to be used.
  --enable-cleartext-plugin
                      Enable/disable the clear text authentication plugin.
  -e, --execute=name  Execute command and quit. (Disables --force and history
                      file.)
  -E, --vertical      Print the output of a query (rows) vertically.
  -f, --force         Continue even if we get an SQL error.
  --histignore=name   A colon-separated list of patterns to keep statements
                      from getting logged into syslog and mysql history.
  -G, --named-commands
                      Enable named commands. Named commands mean this program's
                      internal commands; see mysql> help . When enabled, the
                      named commands can be used from any line of the query,
                      otherwise only from the first line, before an enter.
                      Disable with --disable-named-commands. This option is
                      disabled by default.
  -i, --ignore-spaces Ignore space after function names.
  --init-command=name SQL Command to execute when connecting to MySQL server.
                      Will automatically be re-executed when reconnecting.
  --local-infile      Enable/disable LOAD DATA LOCAL INFILE.
  -b, --no-beep       Turn off beep on error.
  -h, --host=name     Connect to host.
  -H, --html          Produce HTML output.
  -X, --xml           Produce XML output.
  --line-numbers      Write line numbers for errors.
                      (Defaults to on; use --skip-line-numbers to disable.)
  -L, --skip-line-numbers
                      Don't write line number for errors.
  -n, --unbuffered    Flush buffer after each query.
  --column-names      Write column names in results.
                      (Defaults to on; use --skip-column-names to disable.)
  -N, --skip-column-names
                      Don't write column names in results.
  --sigint-ignore     Ignore SIGINT (CTRL-C).
  -o, --one-database  Ignore statements except those that occur while the
                      default database is the one named at the command line.
  -p, --password[=name]
                      Password to use when connecting to server. If password is
                      not given it's asked from the tty.
  -W, --pipe          Use named pipes to connect to server.
  -P, --port=#        Port number to use for connection or 0 for default to, in
                      order of preference, my.cnf, $MYSQL_TCP_PORT,
                      /etc/services, built-in default (3306).
  --prompt=name       Set the mysql prompt to this value.
  --protocol=name     The protocol to use for connection (tcp, socket, pipe,
                      memory).
  -q, --quick         Don't cache result, print it row by row. This may slow
                      down the server if the output is suspended. Doesn't use
                      history file.
  -r, --raw           Write fields without conversion. Used with --batch.
  --reconnect         Reconnect if the connection is lost. Disable with
                      --disable-reconnect. This option is enabled by default.
                      (Defaults to on; use --skip-reconnect to disable.)
  -s, --silent        Be more silent. Print results with a tab as separator,
                      each row on new line.
  --shared-memory-base-name=name
                      Base name of shared memory.
  -S, --socket=name   The socket file to use for connection.
  --ssl-mode=name     SSL connection mode.
  --ssl               Deprecated. Use --ssl-mode instead.
                      (Defaults to on; use --skip-ssl to disable.)
  --ssl-verify-server-cert
                      Deprecated. Use --ssl-mode=VERIFY_IDENTITY instead.
  --ssl-ca=name       CA file in PEM format.
  --ssl-capath=name   CA directory.
  --ssl-cert=name     X509 cert in PEM format.
  --ssl-cipher=name   SSL cipher to use.
  --ssl-key=name      X509 key in PEM format.
  --ssl-crl=name      Certificate revocation list.
  --ssl-crlpath=name  Certificate revocation list path.
  --tls-version=name  TLS version to use, permitted values are: TLSv1, TLSv1.1
  -t, --table         Output in table format.
  --tee=name          Append everything into outfile. See interactive help (\h)
                      also. Does not work in batch mode. Disable with
                      --disable-tee. This option is disabled by default.
  -u, --user=name     User for login if not current user.
  -U, --safe-updates  Only allow UPDATE and DELETE that uses keys.
  -U, --i-am-a-dummy  Synonym for option --safe-updates, -U.
  -v, --verbose       Write more. (-v -v -v gives the table output format).
  -V, --version       Output version information and exit.
  -w, --wait          Wait and retry if connection is down.
  --connect-timeout=# Number of seconds before connection timeout.
  --max-allowed-packet=#
                      The maximum packet length to send to or receive from
                      server.
  --net-buffer-length=#
                      The buffer size for TCP/IP and socket communication.
  --select-limit=#    Automatic limit for SELECT when using --safe-updates.
  --max-join-size=#   Automatic limit for rows in a join when using
                      --safe-updates.
  --secure-auth       Refuse client connecting to server if it uses old
                      (pre-4.1.1) protocol. Deprecated. Always TRUE
  --server-arg=name   Send embedded server this as a parameter.
  --show-warnings     Show warnings after every statement.
  -j, --syslog        Log filtered interactive commands to syslog. Filtering of
                      commands depends on the patterns supplied via histignore
                      option besides the default patterns.
  --plugin-dir=name   Directory for client-side plugins.
  --default-auth=name Default authentication client-side plugin to use.
  --binary-mode       By default, ASCII '\0' is disallowed and '\r\n' is
                      translated to '\n'. This switch turns off both features,
                      and also turns off parsing of all clientcommands except
                      \C and DELIMITER, in non-interactive mode (for input
                      piped to mysql or loaded using the 'source' command).
                      This is necessary when processing output from mysqlbinlog
                      that may contain blobs.
  --connect-expired-password
                      Notify the server that this client is prepared to handle
                      expired password sandbox mode.

Default options are read from the following files in the given order:
C:\windows\my.ini C:\windows\my.cnf C:\my.ini C:\my.cnf C:\Program Files\MySQL\MySQL Server 5.
7\my.ini C:\Program Files\MySQL\MySQL Server 5.7\my.cnf

The following groups are read: mysql client
The following options may be given as the first argument:
--print-defaults        Print the program argument list and exit.
--no-defaults           Don't read default options from any option file,
                        except for login file.
--defaults-file=#       Only read default options from the given file #.
--defaults-extra-file=# Read this file after the global files are read.
--defaults-group-suffix=#
                        Also read groups with concat(group, suffix)
--login-path=#          Read this path from the login file.

Variables (--variable-name=value)
and boolean options {FALSE|TRUE}  Value (after reading options)
--------------------------------- ----------------------------------------
auto-rehash                       TRUE
auto-vertical-output              FALSE
bind-address                      (No default value)
character-sets-dir                (No default value)
column-type-info                  FALSE
comments                          FALSE
compress                          FALSE
database                          (No default value)
default-character-set             auto
delimiter                         ;
enable-cleartext-plugin           FALSE
vertical                          FALSE
force                             FALSE
histignore                        (No default value)
named-commands                    FALSE
ignore-spaces                     FALSE
init-command                      (No default value)
local-infile                      FALSE
no-beep                           FALSE
host                              34.227.127.100
html                              FALSE
xml                               FALSE
line-numbers                      TRUE
unbuffered                        FALSE
column-names                      TRUE
sigint-ignore                     FALSE
port                              0
prompt                            mysql>
quick                             FALSE
raw                               FALSE
reconnect                         TRUE
shared-memory-base-name           (No default value)
socket                            (No default value)
ssl                               TRUE
ssl-verify-server-cert            FALSE
ssl-ca                            (No default value)
ssl-capath                        (No default value)
ssl-cert                          (No default value)
ssl-cipher                        (No default value)
ssl-key                           (No default value)
ssl-crl                           (No default value)
ssl-crlpath                       (No default value)
tls-version                       (No default value)
table                             FALSE
user                              root
safe-updates                      FALSE
i-am-a-dummy                      FALSE
connect-timeout                   0
max-allowed-packet                16777216
net-buffer-length                 16384
select-limit                      1000
max-join-size                     1000000
secure-auth                       TRUE
show-warnings                     FALSE
plugin-dir                        (No default value)
default-auth                      (No default value)
binary-mode                       FALSE
connect-expired-password          FALSE

goto exitb



:_

:rc

set fp=* Remote connection.

rem Function Creation Date: Jun-29-2017

echo %fp%
echo.

mysql -uroot -p%password% -h 34.227.127.100 -p3306 mercdb

rem mysql -u USERNAME -pPASSWORD -h REMOTE_SERVER_IP DB_NAME 

goto exitb



:_

:update_mercury_url

set fp=* Update Mercury URL.

rem fcd: Jul-31-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercdb.mercury_configuration set value='https://testing1.mcipsca.com' where item='mercury_url';"

goto exitb



:_

:update_contact_name

set fp=* Update contact name.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercdb.mercury_contacts set contact_name='Reginald Fessenden' where contact_id='1';"

goto exitb



:_

:update_contact_phone

set fp=* Update phone.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercdb.mercury_contacts set contact_phone='(410) 555-1212' where contact_id='1';"

goto exitb



:_

:update_contact_email

set fp=* Update email.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercdb.mercury_contacts set contact_email='spectrum.manager1@gmail.com' where contact_id='1';"

goto exitb



:_

:contacts

set fp=* Review mercury_contacts table.

rem fcd: Aug-1-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select * from mercury_contacts;"

goto exitb



:_

:suv

set fp=* Select users by validation date.

rem Function Creation Date: Aug-2-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select last_login, uid, position, revalidate_date from mercdb.mercury_users where last_login > '2017-04-04' order by revalidate_date;"

goto exitb



:_

:sunes

set fp=* Select users with NES emails.

rem Function Creation Date: Aug-2-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select last_login, uid, position, revalidate_date from mercdb.mercury_users where uid like '%%nesassoc%%';"

goto exitb



:_

:update_reval_date_dl

set fp=* Update revalidate date.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercdb.mercury_users set revalidate_date='2016-08-03' where uid='DAVID.LYON@NESASSOCIATES.COM';"

goto exitb



:_

:update_reval_date_sk

set fp=* Update revalidate date.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercdb.mercury_users set revalidate_date='2016-08-03' where uid='SANJIVINI.KHEMANI@NESASSOCIATES.COM';"

goto exitb



:_

:update_reval_date_jj

set fp=* Update revalidate date.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update mercdb.mercury_users set revalidate_date='2016-08-03' where uid='JONATHAN.R.JONES.3@GMAIL.COM';"

goto exitb



:_

:cuall

:count_users

set fp=* Count users.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select count(*) from mercdb.mercury_users;"

goto exitb



:_

:sua

:suall

set fp=* Select all users.

rem Function Creation Date: Aug-2-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select last_login, uid, position, revalidate_date from mercdb.mercury_users order by last_login desc;"

goto exitb



:_

:cau

:cuact

set fp=* Count active users.

rem fcd: May-16-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select count(*) from mercdb.mercury_users where status = 'A';"

goto exitb



:_

:sau

:suact

set fp=* Select all active users order by last login date.

rem Function Creation Date: Aug-2-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select last_login, uid, position, revalidate_date from mercdb.mercury_users where status = 'A' order by last_login desc;"

goto exitb



:_

:eau

set fp=* Select email of active users.

rem fud: Aug-7-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select email from mercdb.mercury_users where status = 'A' order by last_login desc;"

goto exitb



:_

:cnr

set fp=* Count new requests.

rem fud: Aug-11-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select count(*) from mercury_requests where z_creat_date >= '2016-09-01' and z_creat_date <= '2017-07-31';"

goto exitb



:_

:cna

set fp=* Count new assignments.

rem fud: Aug-11-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select count(*) from mercury_assignments where z_approve_date >= '2016-09-01' and z_approve_date <= '2017-07-31';"

goto exitb



:_

:update_country_names_in_aocountries_table

set fp=* Update country names.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Uzbekistan' where country_code='uzb';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Venezuela' where country_code='ven';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Saint Vincent and the Grenadines' where country_code='vct';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='U.S. Virgin Islands' where country_code='vi';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Vietnam' where country_code='vtn';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Vanuatu' where country_code='vut';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Wallis and Futuna' where country_code='wal';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Yemen' where country_code='yem';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Zambia' where country_code='zmb';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Zimbabwe' where country_code='zwe';"

goto exitb



:_

:update_country_names_1

set fp=* Update country names in aocoutries table.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Puerto Rico' where country_code='ptr';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Uzbekistan' where country_code='uzb';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Venezuela' where country_code='ven';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Saint Vincent and the Grenadines' where country_code='vct';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='U.S. Virgin Islands' where country_code='vi';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Vietnam' where country_code='vtn';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Vanuatu' where country_code='vut';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Wallis and Futuna' where country_code='wal';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Yemen' where country_code='yem';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Zambia' where country_code='zmb';"
mysql -uroot -p%password% mercdb -e "update aocountries set country_title='Zimbabwe' where country_code='zwe';"

goto exitb



:_

:update_country_names_2

set fp=* Update country names in ancountries table.

rem fcd: Aug-1-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Afghanistan' where country_code='afg';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Albania' where country_code='alb';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Algeria' where country_code='alg';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Andorra' where country_code='and';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Angola' where country_code='agl';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Argentina' where country_code='arg';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Armenia' where country_code='arm';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Azerbaijan' where country_code='aze';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='The Bahamas' where country_code='bah';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Bahrain' where country_code='bhr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Bangladesh' where country_code='bgd';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Belarus' where country_code='blr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Benin' where country_code='ben';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Bhutan' where country_code='btn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Bolivia' where country_code='bol';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Bosnia and Herzegovina' where country_code='bih';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Botswana' where country_code='bot';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Brazil' where country_code='b';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Bulgaria' where country_code='bul';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Brunei' where country_code='bru';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Burundi' where country_code='bdi';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Cambodia' where country_code='cbg';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Cameroon' where country_code='cme';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Cape Verde' where country_code='cpv';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Chad' where country_code='tcd';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Chile' where country_code='chl';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='China' where country_code='chn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Christmas Island' where country_code='chr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Cocos (Keeling) Islands' where country_code='ico';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Columbia' where country_code='clm';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Comoros' where country_code='com';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Democratic Republic of the Congo' where country_code='cod';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Republic of the Congo' where country_code='cog';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Croatia' where country_code='hrv';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Cyprus' where country_code='cyp';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Czechia' where country_code='cze';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='South Korea' where country_code='kre';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Djibouti' where country_code='dji';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Dominica' where country_code='dma';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Dominican Republic' where country_code='dom';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Egypt' where country_code='egy';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='El Salvador' where country_code='slv';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Equatorial Guinea' where country_code='gne';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Estonia' where country_code='est';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Falkland Islands (Islas Malvinas)' where country_code='flk';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Federated States of Micronesia' where country_code='fsm';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Fiji' where country_code='fji';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='The Gambia' where country_code='gmb';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Gabon' where country_code='gab';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Georgia' where country_code='geo';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Germany' where country_code='d';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Guatemala' where country_code='gtm';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Guinea' where country_code='gui';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Guinea-Bissau' where country_code='gnb';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Haiti' where country_code='hti';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Heard Island and McDonald Islands' where country_code='hmd';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Hungary' where country_code='hng';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Honduras' where country_code='hnd';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='India' where country_code='ind';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Indonesia' where country_code='ins';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Iran' where country_code='irn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Iraq' where country_code='irq';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Israel' where country_code='isr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Japan' where country_code='j';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Jordan' where country_code='jor';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Kazakhstan' where country_code='kaz';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Kenya' where country_code='ken';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Kiribati' where country_code='kir';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='North Korea' where country_code='kor';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Kuwait' where country_code='kwt';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Kyrgyzstan' where country_code='kgz';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Laos' where country_code='lao';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Latvia' where country_code='lva';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Lesotho' where country_code='lso';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Liberia' where country_code='lbr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Libya' where country_code='lby';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Liechtenstein' where country_code='lie';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Lithuania' where country_code='ltu';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Mali' where country_code='mli';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Macedonia (FYROM)' where country_code='fyr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Madagascar' where country_code='mdg';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Maldives' where country_code='mld';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='United States' where country_code='usa';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Marshall Islands' where country_code='mhl';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Mauritania' where country_code='mtn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Mauritius' where country_code='mau';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Moldova' where country_code='mda';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Monaco' where country_code='mco';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Mongolia' where country_code='mng';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Montenegro' where country_code='mne';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Morocco' where country_code='mrc';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Mozambique' where country_code='moz';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Myanmar (Burma)' where country_code='brm';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Nambia ' where country_code='nmb';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Nauru' where country_code='nru';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Netherlands' where country_code='hol';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Niger' where country_code='ngr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Nigeria' where country_code='nig';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Niue' where country_code='niu';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Oman' where country_code='oma';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Pakistan' where country_code='pak';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Palau' where country_code='plw';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Palestine' where country_code='pse';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Panama' where country_code='pnr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Paraguay' where country_code='prg';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Phillipines' where country_code='phl';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Pitcairn Islands' where country_code='ptc';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Poland' where country_code='pol';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Puerto Rico' where country_code='ptr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Qatar' where country_code='qat';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Russia' where country_code='rus';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Rwanda' where country_code='rrw';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Saint Kitts and Nevis' where country_code='kna';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Saint Vincent and the Grenadines' where country_code='vct';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Samoa' where country_code='smo';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Sri Lanka' where country_code='cln';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Sudan' where country_code='sdn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Senegal' where country_code='sen';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Serbia' where country_code='srb';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Seychelles' where country_code='sey';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Singapore' where country_code='sng';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Slovakia' where country_code='svk';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Slovenia' where country_code='svn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Somalia' where country_code='som';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='South Africa' where country_code='afs';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Suriname' where country_code='sur';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Swaziland' where country_code='swz';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Switzerland' where country_code='sui';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Syria' where country_code='syr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Taiwan' where country_code='twn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Tajikistan' where country_code='tjk';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Tanzania' where country_code='tza';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Togo' where country_code='tgo';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Tonga' where country_code='ton';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='United Kingdom' where country_code='g';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Uganda' where country_code='uga';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Uruguay' where country_code='urg';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Uzbekistan' where country_code='uzb';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Vanuatu' where country_code='vut';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Vatican City' where country_code='cva';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Venezuela' where country_code='ven';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Vietnam' where country_code='vtn';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='San Marino' where country_code='smr';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Yemen' where country_code='yem';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Tokelau' where country_code='tkl';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Zambia' where country_code='zmb';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Zimbabwe' where country_code='zwe';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Saudi Arabia' where country_code='ars';"
mysql -uroot -p%password% mercdb -e "update ancountries set country_title='Wallis and Futuna' where country_code='wal';"

goto exitb



:_ + Database Restore Steps



::_

:r1

set fp=* Restore database step 1. Delete database! Use with caution.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%

echo.
set /P user_option=Are you sure you wish to delete the database?! (y/n): 
echo.

if not "%user_option%"=="y" echo Aborting.
if not "%user_option%"=="y" goto exitb

set /P user_option=Have you stopped WildFly? (y/n): 
echo.

if not "%user_option%"=="y" echo Aborting.
if not "%user_option%"=="y" goto exitb

echo You have chosen to continue. Hold on to your hat.
echo.

mysql -uroot -p%password% mercdb -e "drop database if exists `mercdb`;"

goto exitb



::_

:r2

set fp=* Restore database step 2. Create a blank database.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

mysql -uroot -p%password% -e "create database if not exists `mercdb` default character set=utf8;"

goto exitb



::_

:r3

set fp=* Restore database step 3. Load a database.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

set /P user_option=What's the name of dmp file (without the file extension) in the backups folder you wish to load? 

echo.
if /i not exist c:\mercury\backups\%user_option%.dmp echo The filename you entered does not exist in the folder: "c:\mercury\backups".

rem New way.
if /i exist c:\mercury\backups\%user_option%.dmp mysql -uroot -p%password% mercdb < c:\mercury\backups\%user_option%.dmp

rem Old way.
rem mysql -uroot -p%password% mercdb < c:\mercury\backups\NES-1KKHHC2_May-15-2017_2_44_PM.dmp

goto exitb



::_

:off

:r4

set fp=* Turn active_mailhost off.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "update mercury_configuration set value='false' where item='active_mailhost';"

goto exitb



::_

:default

:def_ldap

:r5

set fp=* Use default LDAP hash.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "update mercury_configuration set value='%password%' where item='ldap_hash';"

goto exitb



::_

:c

:r6

:conf

:config

:show_config

set fp=* Review mercury_configuration table.

rem lu: Sep-18-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select * from mercury_configuration;"

goto exitb



::_

:r7

set fp=* Import LDIF. Remember that apparently you need to stop OpenDS BEFORE you can successfully import an LDIF file.

rem lu: Sep-18-2017

echo %fp%
echo.

echo On Nov-20-2017, I had the following error when trying to import an LDIF while OpenDS was running.
echo.
echo From XPS: Equivalent command line: C:\Mercury\LDAP\OpenDS-2.2.1\bat\import-ldif.bat "--ldifFile" "C:\Mercury\Backups\EC2AMAZ-F3EA4DJ_Nov-20-2017_8_01_PM.ldif" "--backendID" "userRoot" "--clearBackend" "--hostname" "XPS" "--port" "4444" "--bindDN" "cn=Directory Manager" "--bindPassword" "********" "--trustAll" "--noPropertiesFile"

goto exitb



:_

:tx_power

set fp=* Show tx power.

rem fud: Oct-25-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select SERIALNUMBER, power, RADIO_POWER, TX_RADIO_POWER from mercury_requests where SERIALNUMBER LIKE 'USA%%' order by SERIALNUMBER;"

goto exitb



:_

:tx_power_2

set fp=* Show tx power.

rem fud: Oct-25-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select SERIALNUMBER, power, RADIO_POWER, TX_RADIO_POWER from mercury_assignments where SERIALNUMBER LIKE 'USA2017%%' order by SERIALNUMBER;"

goto exitb



:_+ Connect to MySQL



::_

:b

set fp=* Connect to MySQL Monitor in the most basic way.

rem Function Creation Date: May-9-2017

echo %fp%
echo.

mysql -uroot -p

goto exitb



::_

:sql

set fp=* Connect to MySQL Monitor.

rem Function Creation Date: May-9-2017

echo %fp%
echo.

mysql -uroot -p mercdb

goto exitb



:_

:cnu

set fp=* Count new users - old.

rem fud: Aug-11-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select count(*) from mercury_users where z_approved_date >= '2016-09-01' and z_approved_date <= '2017-07-31';"

goto exitb



:_

:cnu2

set fp=* Count new users.

rem lu: Nov-9-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select count(*) from mercury_users where z_approved_date >= '2017-08-01' and z_approved_date <= '2017-10-31';"

goto exitb



:_

:dup_ops

set fp=* Duplicate operations.

rem lu: Nov-13-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select operation_id, operation_name, OPERATION_COUNTRY, Z_MOD_DATE, Z_MOD_USER from mercury_operation where operation_name like 'op rma' order by operation_id;"

goto exitb



:_

:reval

set fp=* View revalidation.

rem lu: Nov-14-2017

echo %fp%

set sql="select uid, status, revalidate_date from mercury_users order by z_mod_date desc limit 20;"

call %0 run_sql

goto exitb



:_

:up_reval

set fp=* Update revalidation for sadmin.

rem lu: Nov-14-2017

echo %fp%

set sql="update mercury_users set status = 'A', revalidate_date = '2030-01-01' where uid='sadmin';"

call %0 run_sql

goto exitb



:_

:run_sql

set fp=* Run SQL.

rem lu: Nov-14-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e %sql%

goto exitb



:_

:help

set fp=* Perform SQL-Mercury-related tasks.

rem fcd: May-16-2017

echo %fp%

echo.
echo Usage: s [single parameter]

echo.
echo     Parameter  Description
echo -------------  --------------------------------------------------
echo            bu  Back up the database.
echo           cnu  Count new users.
echo        config  Show configuration table.
echo         cuact  Count users, active.
echo         cuall  Count users, all.
echo          copa  Start LDAP control panel.
echo            ld  Run LDAP service.
echo      ldap_svc  Install LDAP as a service.
echo           off  Turn mail host off.
echo            on  Turn mail host on.
echo          reqs  Select latest requests.
echo            st  Show tables.
echo         sunes  Select users with 'NESASSOC' email addresses.
echo           suv  Select users, order by validation date.
echo           sql  Connect to SQL monitor.
echo         users  Select users, active by recent login.

goto exitb



:_+ Operations Scripts



::_

:up_zero_op

set fp=* Update operation with id number zero.

rem lu: Nov-13-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "update mercury_operation set operation_name = '(Not Set)', OPERATION_CONTACT = 'NES.mercury@nesassociates.com', Z_MOD_USER = 'NES.mercury@nesassociates.com' where operation_id = '0';"

goto exitb



::_

:ops

:ops_by_id

set fp=* Operations by id.

rem lu: Nov-13-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select operation_id, operation_name, operation_contact, OPERATION_COUNTRY, Z_MOD_DATE, Z_MOD_USER from mercury_operation order by operation_id;"

goto exitb



:_

:callu

set fp=* Count all users.

rem fcd: May-16-2017

echo %fp%

mysql -uroot -p%password% mercdb -e "select count(*) from mercury_users;"

goto exitb



:_

:u

:users

set fp=* Users by last login.

rem Function Creation Date: Jul-25-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select last_login, uid, position from mercdb.mercury_users where last_login > '2017-01-01' order by last_login desc limit 45;"

goto exitb



:_

:r

:rq

:reqs

:requests

set fp=* Requests by created date.

rem lu: Nov-13-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select z_mod_date, OPERATION_ID, sm_uid, start_date, SERIALNUMBER, su_uid, request_user from mercury_requests order by z_mod_date desc limit 40;"

goto exitb



:_

:up_op

set fp=* Update operation for focussed record.

rem lu: Nov-13-2017

echo %fp%

set sql="update mercury_requests set OPERATION_ID = '34' where request_id = '2207';"

call %0 run_sql

goto exitb



:_

:host

set fp=* Test host.

rem lu: Nov-30-2017

echo %fp%
echo.

mysql -uroot -p%password% mercdb -e "select * from mercury_configuration;" -h127.0.0.1

goto exitb



:_

:shelp

set fp=* Show MySQL help, a helpful reminder. :)

rem lu: Nov-30-2017

echo %fp%

mysql -?

goto exitb



:_ + Database Restore Steps for Remote Server



::_

:xr1

set fp=* Restore database step 1. Delete database! Use with caution.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%

echo.
set /P user_option=Are you sure you wish to delete the database?! (y/n): 
echo.

if not "%user_option%"=="y" echo Aborting.
if not "%user_option%"=="y" goto exitb

set /P user_option=Have you stopped WildFly? (y/n): 
echo.

if not "%user_option%"=="y" echo Aborting.
if not "%user_option%"=="y" goto exitb

echo You have chosen to continue. Hold on to your hat.
echo.

mysql -productiondb -pZMx2NhGG mercdb_test -e "drop database if exists `mercdb_test`;" -hmercuryproductiondb-a.cidbsfzscs2l.us-east-1.rds.amazonaws.com

goto exitb



::_

:xr2

set fp=* Restore database step 2. Create a blank database.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

mysql -productiondb -pZMx2NhGG -e "create database if not exists `mercdb_test` default character set=utf8;" -hmercuryproductiondb-a.cidbsfzscs2l.us-east-1.rds.amazonaws.com

goto exitb



::_

:xr3

set fp=* Restore database step 3. Load a database.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

set /P user_option=What's the name of dmp file (without the file extension) in the backups folder you wish to load? 

echo.
if /i not exist c:\mercury\backups\%user_option%.dmp echo The filename you entered does not exist in the folder: "c:\mercury\backups".

if /i exist c:\mercury\backups\%user_option%.dmp mysql -productiondb -pZMx2NhGG mercdb_test < c:\mercury\backups\%user_option%.dmp -hmercuryproductiondb-a.cidbsfzscs2l.us-east-1.rds.amazonaws.com

goto exitb



::_

:xr4

set fp=* Turn active_mailhost off.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

mysql -productiondb -pZMx2NhGG mercdb_test -e "update mercury_configuration set value='false' where item='active_mailhost';" -hmercuryproductiondb-a.cidbsfzscs2l.us-east-1.rds.amazonaws.com

goto exitb



::_

:xr5

set fp=* Use default LDAP hash.

rem skw: This is one of the steps to restore a database. (skw restore database)

rem fcd: May-16-2017

echo %fp%
echo.

mysql -productiondb -pZMx2NhGG mercdb_test -e "update mercury_configuration set value='%password%' where item='ldap_hash';" -hmercuryproductiondb-a.cidbsfzscs2l.us-east-1.rds.amazonaws.com

goto exitb



::_

:xr6

set fp=* Review mercury_configuration table.

rem lu: Sep-18-2017

echo %fp%
echo.

mysql -uproductiondb -pZMx2NhGG mercdb_test -e "select * from mercury_configuration;" -hmercuryproductiondb-a.cidbsfzscs2l.us-east-1.rds.amazonaws.com

goto exitb



::_

:xr7

set fp=* Import LDIF. Remember that apparently you need to stop OpenDS BEFORE you can successfully import an LDIF file.

rem lu: Sep-18-2017

echo %fp%
echo.

echo On Nov-20-2017, I had the following error when trying to import an LDIF while OpenDS was running.
echo.
echo From XPS: Equivalent command line: C:\Mercury\LDAP\OpenDS-2.2.1\bat\import-ldif.bat "--ldifFile" "C:\Mercury\Backups\EC2AMAZ-F3EA4DJ_Nov-20-2017_8_01_PM.ldif" "--backendID" "userRoot" "--clearBackend" "--hostname" "XPS" "--port" "4444" "--bindDN" "cn=Directory Manager" "--bindPassword" "********" "--trustAll" "--noPropertiesFile"

goto exitb



:_

Metadata: Track Size (!tss)

     Date      Lines      Bytes  Functions  Notes
 -----------  ------  ---------  ---------  -------------------------------------------------

: Jan-4-2018   1,757     53,334       79



:_ (!sp) (mov-9)
