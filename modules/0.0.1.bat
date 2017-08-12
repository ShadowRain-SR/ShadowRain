@Echo off
Set shadowDir=%cd%
Cd %currentDir%
Goto Entry
Exit

:Entry
Set /P Command="<%cd%> (~)> "
If "%Command%"=="""" Goto Entry
If "%Command%"=="cls" Goto Clear
If "%Command%"=="clear" Goto Clear
If "%Command%"=="refresh" Goto Refresh
If "%Command%"=="logout" Goto Logout
If "%Command%"=="ls" Goto Ls
If "%Command%"=="cd" Goto Cd
If "%Command%"=="root" Goto Root
Goto Entry

:Refresh
Set currentDir=%cd%
Cd %shadowDir%
Echo Console Refreshed.
modules\0.0.1.bat

:Logout
Cd %shadowDir%
Startup.bat

:Ls
Dir
Goto Entry

:Cd
Set /P Directory="What directory? "
Cd %Directory%
Goto Entry

:Root
Cd %shadowDir%
Goto Entry

:Clear
Cls
Goto Entry
