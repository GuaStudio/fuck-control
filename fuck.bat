@echo off
setlocal enabledelayedexpansion
chcp 65001

set "searchDir=C:\"  
set "searchFile=Student.exe"  
set "newFileName=sbnmsl.exe"

echo Info: Loading...

for /r "%searchDir%" %%F in (%searchFile%) do (  
    set "filePath=%%~fF" 
    if exist "!filePath!" (  
        echo Info: Found Student.exe at: "!filePath!"
        ren "!filePath!" "!newFileName!"
        taskkill /f /t /im Student.exe 
    )  
)  

echo Error: Student.exe Not found.

pause