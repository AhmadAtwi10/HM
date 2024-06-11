@echo off

REM Set paths to HM encoder executable and input/output files
set HMEncoder= "C:\HM\HM-master\bin\vs17\msvc-19.36\x86_64\release\TAppEncoder.exe"
set ConfigFile= "C:\HM\HM-master\encoder_lowdelay_P_main_modified.cfg"



REM Execute HM encoder with specified parameters
%HMEncoder% -c %ConfigFile% 

REM Check if encoding was successful
if %errorlevel% equ 0 (
    echo Encoding completed successfully.
) else (
    echo Encoding failed.
)

pause
