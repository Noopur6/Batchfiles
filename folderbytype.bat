@echo off
rem for each file in the folder
for %%a in (".\*") do (
rem check if file has an extension and if it is not our script
if "%%~xa" NEQ "" if "%%~dpxa" NEQ "%~dpx0" (
rem check if extension folder exists, if not then it is created
if not exist "%%~xa" mkdir "%%~xa"
rem move the file to the directory
move "%%a" "%%~dpa%%~xa\"
))