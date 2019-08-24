@ECHO OFF 
TITLE windows service updater
nssm stop %1
SET FOLDER=%2%
DEL /F/Q/S "%FOLDER%" > NUL
RMDIR /Q/S "%FOLDER%"
mkdir c:\%FOLDER%
move c:\sourcecode\* c:\%FOLDER%
nssm start %1
PAUSE