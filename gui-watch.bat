@ECHO OFF

cd %~dp0
for %%I in (.) do set CurrDirName=%%~nxI
set DEBUG=

pushd ..\cli
CALL poetry run cli gui --cache ..\%CurrDirName%\etl-cache %DEBUG% -i ..\%CurrDirName% -o ..\%CurrDirName%\gui-output --watch
popd
