@Echo off
Goto Entry
Exit

:Entry
Set /P Command="<%cd%> (~)> "
If "%Command%"=="" Goto Entry
If "%Command%"=="""" Goto Entry
If "%Command%"=="test" Goto Test
If "%Command%"=="refresh" Goto Refresh
If "%Command%"=="logout" Goto Logout
If "%Command%"=="ls" Goto Ls
Goto Entry

:Test
Echo OK
Goto Entry

:Refresh
Echo Console Refreshed.
modules\0.0.1.bat

:Logout
Startup.bat

:Ls
Dir
Goto Entry
