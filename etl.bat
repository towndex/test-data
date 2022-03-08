@ECHO OFF

cd %~dp0
for %%I in (.) do set CurrDirName=%%~nxI
set DEBUG=

pushd ..\cli
CALL poetry run cli etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i ..\%CurrDirName%\documents -o ..\%CurrDirName%\etl-output --output-format json_directory
popd
