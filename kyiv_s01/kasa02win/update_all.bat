@echo off
set pathconfig=%~dp0
echo "pathconfig: %pathconfig%"
:: set pathconfig=c:\www\webCashBoxConfigsXXX\shop_XX\kassaXXwin
cd %pathconfig%
call 00_update.bat
cd %pathconfig%
call 01_copybuild.bat
cd %pathconfig%
call 02_npm_install-back.bat
cd %pathconfig%
call 03_npm_install-front.bat
cd %pathconfig%
call 04_npm_install-scales.bat
cd %pathconfig%
call 05_npm_front-rebuild.bat
cd %pathconfig%
call 06_restart-back.bat
cd %pathconfig%
call 07_restart-scales.bat