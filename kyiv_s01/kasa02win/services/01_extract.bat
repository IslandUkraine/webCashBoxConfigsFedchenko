@echo off

:: Get the directory of the batch file
set scriptdir=%~dp0

echo "scriptdir: %scriptdir%"

:: Go up three directories
for %%I in ("%scriptdir%..\..\..\..") do set "parentdir=%%~fI"
::cd ..\..\..\
::set parentdir=%~dp0
echo "parentdir: %parentdir%"

for %%I in ("%scriptdir%..\..\..") do set "configdir=%%~fI"
echo "configdir: %configdir%"

cd %scriptdir%

:: Define path to the 7z directory
set "path_to_7z=%configdir%\7z\"
echo "path_to_7z: %path_to_7z%"

:: Define path to the directory containing services.zip
set "path_to_zip=%parentdir%\webCashBox\include\installWindows\"
echo "path_to_zip: %path_to_zip%"

:: Define the destination directory
set "destination_dir=%parentdir%\"
echo "destination_dir: %destination_dir%"

:: Extract the zip file using 7zip
"%path_to_7z%7z.exe" x "%path_to_zip%services.zip" -o"%destination_dir%"
"%path_to_7z%7z.exe" x "%path_to_zip%nginx.zip" -o"%destination_dir%"
"%path_to_7z%7z.exe" x "%path_to_zip%jenkins.zip" -o"%destination_dir%"