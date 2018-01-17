@echo off

::Directory listing

if "%1"=="" goto default

if exist *.%1 goto ext

goto %1

:do Directories Only
dir/p/ad/o/w
goto bye

:default
goto o
goto bye

:df Directory Freedom
if "%2"=="" goto df_hop
df.com /D *.%2
goto bye
:df_hop
df.com /D
goto bye

:ext for by EXTension , by
dir/p/o-d *.%1
goto bye

:fo Files Only
dir/a-d/p/o
goto bye

:nm NuMber of files in the directory
set math=
for %%f in (*.*) do batcmd ad %%f
echo.
echo                 %math% files present in this directory.
echo.
set math=
goto bye

:o for Orderly, i.e. alphabetical by filename
dir/p/o
goto bye

:of for Orderly, i.e. alphabetical by filename, directory Freedom
df.com /N %2
goto bye

:s Size
dir/p/o-s/a-d *.*
goto bye

:sy system files
dir/as
goto bye

:sf for Size in, directory Freedom
df.com /S %2
goto bye

:t Time, latest first
dir/p/o-d
goto bye

:w for Wide format
dir/o/w
goto bye

::The following line should be the last line in this file.
:bye