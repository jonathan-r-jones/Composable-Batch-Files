:_

@echo off



:_

set filename_stands_for=* Wrapper around the Move command.



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
echo %filep%

echo.
echo Last Updated: Sep-4-2018

echo.
echo Usage: %0 [Parameter 1]

exit/b



:_

:to_path

:move_all_files_in_current_folder_to_cbf_path

set fp=* Move all files in current folder (%cd%) to cbf path.

echo.
echo %fp% (%cbf_path%)

call m folder_is_empty "%cd%"

if %errorlevel% == 1 (
  exit/b
)

call m clear_errorlevel_silently

move *.* %cbf_path%

rem (!rfsp) (mov-2)

exit/b



:_+ Move PC Operations



::_

:move_old_clipjam

set fp=* Move old ClipJam files from the Podcasts to Audiobooks folder.

rem This ensures that the podcasts folder has the new material.

rem lu: Jul-15-2018

echo.
echo %fp%

call td clipjam_podcasts

if %errorlevel% == 1 (
  exit/b
)

call m remove_hidden_attributes

call td clipjam_podcasts

if %errorlevel% == 1 (
  exit/b
)

call n cj_au

rem echo.
rem echo * Note: the move command complains if there are no files present to move. Sep-2-2018

call %0 move_all_files_in_current_folder_to_cbf_path

exit/b



::_

:move_sa_to_cj

set fp=* Move staging area podcasts to the Clipjam folder.

rem lu: Jul-8-2018

echo.
echo %fp%

call td staging_area 

call n clipjam_podcasts

call %0 move_all_files_in_current_folder_to_cbf_path

exit/b



::_

:pc

set fp=* Overaching podcast mover.

rem lu: Aug-24-2018

echo.
echo %fp%

rem Open the podcaster application and download podcasts from there.
rem Then click any button to continue this script.
call x pc

call %0 initialize_environment

call %0 move_podcasts_to_the_staging_folder

call %0 run_tag_program

call %0 move_old_clipjam

call %0 move_sa_to_cj

exit/b



::_

:initialize_environment

set fp= * Initialize environment.

echo.
echo %fp%

set podcast_folder=%my documents%\gpodder\downloads

set staging_area_root="%my documents%\MP3 Content Staging Area\"

exit/b



::_

:move_podcasts_to_the_staging_folder

set fp=* Move all podcasts to the staging folder.

rem FCD: Feb-24-2017

echo.
echo %fp%

cd %podcast_folder%

for /r %%j in (*.mp3) do move "%%j" "%staging_area%"

exit/b



::_

:run_tag_program

set fp=* Run the Tag program.

echo.
echo %fp%

echo.
"C:\Program Files (x86)\Mp3tag\mp3tag.exe"

exit/b



:_