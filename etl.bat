@ECHO OFF

cd %~dp0
for %%I in (.) do set CurrDirName=%%~nxI
set DEBUG=

pushd ..\cli
REM CALL poetry run cli etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i ..\%CurrDirName%\documents -o ..\%CurrDirName%\etl-output --output-format json_directory
REM CALL poetry run cli etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i 1VYy28c7rnwT6pd3OGwfmx63GXrtdGJ8mTm0Fx1oN2ok --input-format google_sheets -o ..\%CurrDirName%\etl-output --output-format json_directory
CALL poetry run cli etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i 1VYy28c7rnwT6pd3OGwfmx63GXrtdGJ8mTm0Fx1oN2ok --input-format google_sheets -o ..\%CurrDirName%\etl-output\json_file\data.json --output-format json_file

popd
