:_

@echo off



:_

set filep=* Clone a Git repository - advanced version.

echo.
echo %filep%                         



:_

set fp=* Route callers.

if "%~1" == "" goto help

if "%~1" == "?" goto help

if "%~1" == "/?" goto help

if "%~1" == "help" goto help

goto %1



:_

:h

:help

rem echo.
rem echo File Purpose: %filep%

echo.
echo Filename stands for: CloNe repository.

echo.
echo Usage: cn [Parameter 1]

echo.
echo Parameter 1: Code snippet to execute.

exit /b



:_

:custom

set fp=* Custome clone.

echo %fp%
echo.
  
rem 1. Repository URL.
set origin_url=https://github.com/jonathan-r-jones/java_bouillabaisse.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/batch_files.git
set origin_url=https://github.com/bruderstein/NppTidy2.git
set origin_url=https://github.com/jamesmontemagno/MeetupManager.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/documentation.git
set origin_url=https://github.com/jamesmontemagno/Hanselman.Forms.git
set origin_url=https://github.com/NASAWorldWind/WebWorldWind.git
set origin_url=https://github.com/Homebrew/brew.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mobility.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/sencha.git
set origin_url=https://Jonathan17@bitbucket.org/nesmercuryteam/mercury6.git
set origin_url=https://github.com/edsnider/marvel-xfdemo.git
set origin_url=https://github.com/jonathan-r-jones/ForGitTesting.git

rem 2. New folder path.
set new_folder_path=C:\Users\jonathan.r.jones\Documents\Dropbox\NES\Macintosh
set new_folder_path=c:\aa
set new_folder_path=c:\mercury
set new_folder_path=c:\projects\netbeans
set new_folder_path=%aa%

rem 3. Folder name.
set folder_name=tirem
set folder_name=bouillabaisse
set folder_name=ForGitTesting2
set folder_name=ForGitTesting3
set folder_name=Batch_Files
set folder_name=MeetupManager
set folder_name=Documentation
set folder_name=HanselmanForms
set folder_name=WebWorldWind_June_2_2017
set folder_name=Homebrew_Jun_7_2017
set folder_name=s6_secondary_repo
set folder_name=Mobility
set folder_name=sencha
set folder_name=mercury6
set folder_name=Xamarin_Marvel_Demo
set folder_name=ForGitTesting

rem 4. Branch name.
set branch_name=clean6.2
set branch_name=master

rem 5. Execute.

cd /d %new_folder_path%

git clone %origin_url% --branch %branch_name% .\%folder_name%

exit /b



:_

:xu

set fp=* Clone all Xamarin University repos.

rem lu: Jun-5-2018

echo %fp%

call td xu

git clone https://github.com/XamarinUniversity/AllCourseExercises.git

cd AllCourseExercises

git submodule init

git submodule update

exit /b



:_