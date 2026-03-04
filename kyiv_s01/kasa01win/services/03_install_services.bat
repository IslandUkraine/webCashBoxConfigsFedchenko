@echo off

set scriptdir=%~dp0

cd %scriptdir%
cd ..\..\..\..\nginx\modules\php\service\
php.exe install php.xml

cd %scriptdir%
cd ..\..\..\..\nginx\
03-frontend.exe install 03-frontend.xml

cd %scriptdir%
cd ..\..\..\..\services\
01-scales.exe install 01-scales.xml

cd %scriptdir%
cd ..\..\..\..\services\
02-backend.exe install 02-backend.xml
