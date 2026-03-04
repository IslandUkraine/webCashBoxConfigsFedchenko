@echo off
set pathconfig=%~dp0
cd %pathconfig%
call 01_extract.bat
cd %pathconfig%
call 02_copyconfigs.bat
cd %pathconfig%
call 03_install_services.bat