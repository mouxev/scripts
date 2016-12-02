echo off
SET VC="C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC"
SET MSDK="C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A"

if "%vcvarsall_ran%"=="" (
echo Calling vcvarsall.bat
call %VC%\vcvarsall.bat 
)

echo Compiling
echo %VC%\bin\cl /I%VC%\include /I%VC%\lib /I%MSDK%\Lib   %1 /link /out:out.exe
%VC%\bin\cl /I%VC%\include /I%VC%\lib /I%MSDK%\Lib  %1 /link /out:out.exe

set vcvarsall_ran="done"
echo on