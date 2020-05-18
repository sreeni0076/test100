@echo off

for /f "delims=" %%a in ('wmic OS get localdatetime  ^| find "."') do set datetime=%%a

set "YYYY=%datetime:~0,4%"
set "MM=%datetime:~4,2%"
set "DD=%datetime:~6,2%"
set "HH=%datetime:~8,2%"
set "MI=%datetime:~10,2%"
set "SS=%datetime:~12,2%"

set fullstamp=%YYYY%-%MM%-%DD%-%HH%-%MI%-%SS%
mkdir=%fullstamp%
setlocal EnableExtensions DisableDelayedExpansion

rem // Define constants here:
set "PATTERN=*.txt"
set "SOURCE=D:\Desktop\test"
Echo "SOURCE" %source%
set "TARGET= D:\desktop\test\%fullstamp%\"
Echo "TARGET" %target%
set "STRING=Sonday"

    for /f "delims=" %%a in ('findstr /smlc:"%STRING%" "%Source%\%PATTERN%"') do copy /y "%%~fa" %target%"
    )
 	endlocal
exit /B