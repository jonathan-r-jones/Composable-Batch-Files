:_

@echo off



:_

set filename_stands_for=* Edit file with Sublime.



:_

set fp=* Route help callers.

if "%~1" == "/?" m editor_help

if "%~1" == "help" m editor_help



:_

:main_function

if "%~1" == "" call r sm

if not "%~1" == "" call ed %1 sm

exit/b



:_