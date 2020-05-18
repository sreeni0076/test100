README

@echo off

## THIS SECTION SETS DATE & TIME STAMP
------------------

for /f "delims=" %%a in ('wmic OS get localdatetime  ^| find "."') do set datetime=%%a

set "YYYY=%datetime:~0,4%"
set "MM=%datetime:~4,2%"
set "DD=%datetime:~6,2%"
set "HH=%datetime:~8,2%"
set "MI=%datetime:~10,2%"
set "SS=%datetime:~12,2%"

set fullstamp=%YYYY%-%MM%-%DD%-%HH%-%MI%-%SS%

-----------------
## THIS SECTION CREATES UNIQUE FOLDER NAME

mkdir=%fullstamp%

-----------------
setlocal EnableExtensions DisableDelayedExpansion

rem // Define constants here:

## ENTER THE FILE TYPES TO SCAN

set "PATTERN=*.txt"

## ENTER THE SOURCE FOLDER ABSOLUTE PATH

set "SOURCE=D:\Desktop\test"      

## ENTER THE DESTINATION FOLDER PATH
set "TARGET= D:\desktop\test\%fullstamp%\"

## ENTER THE SEARCH STRING

set "STRING=Sonday"

## SEARCH ALL FILES IN THE FOLDER RECURSIVELY & MOVE FILES THAT HAS THE SEARCH STRING IN THEM

    for /f "delims=" %%a in ('findstr /smlc:"%STRING%" "%Source%\%PATTERN%"') do move /y "%%~fa" %target%"
    )
 	endlocal
exit /B