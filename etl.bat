@ECHO OFF

cd %~dp0
for %%I in (.) do set CurrDirName=%%~nxI
set DEBUG=

pushd ..\cli
REM CALL poetry run cli etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i 1VYy28c7rnwT6pd3OGwfmx63GXrtdGJ8mTm0Fx1oN2ok --input-format google_sheets -o ..\%CurrDirName%\etl-output --output-format json_file_per_model_type
CALL poetry run cli etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i ..\%CurrDirName% -o ..\%CurrDirName%\..\gui\test\data --output-format json_file_per_model_type

popd
