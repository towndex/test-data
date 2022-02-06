@ECHO OFF

cd %~dp0
for %%I in (.) do set CurrDirName=%%~nxI
set DEBUG=

cd ..\etl
CALL poetry run etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i ..\%CurrDirName%\documents -o ..\%CurrDirName%\etl-output\json_directory --output-format json_directory
CALL poetry run etl --cache ..\%CurrDirName%\etl-cache %DEBUG% -i ..\%CurrDirName%\documents -o ..\%CurrDirName%\etl-output\json_file\data.json --output-format json_file
cd ..\%CurrDirName%
COPY etl-output\json_file\data.json ..\gui\test\testData.json
