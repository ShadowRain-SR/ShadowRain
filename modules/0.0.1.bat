@Echo off
Set shadowDir=%cd%
Cd %currentDir%>Nul
Set Command=
Goto Entry
Exit

:Entry
Set /P Command="<%cd%> (~)> "
If "%Command%"=="" Goto Entry
If "%Command%"=="""" Goto Entry
If "%Command%"=="cls" Goto Clear
If "%Command%"=="clear" Goto Clear
If "%Command%"=="help" Goto Help
If "%Command%"=="commands" Goto Help
If "%Command%"=="refresh" Goto Refresh
If "%Command%"=="logout" Goto Logout
If "%Command%"=="ls" Goto Ls
If "%Command%"=="cd" Goto Cd
If "%Command%"=="root" Goto Root
If "%Command%"=="time" Goto Time
Set Command=
Goto Entry

:Refresh
Set currentDir=%cd%
Cd %shadowDir%
Echo Console Refreshed.
modules\0.0.1.bat
Set Command=

:Logout
Cd %shadowDir%
Startup.bat

:Ls
Dir
Set Command=
Goto Entry

:Cd
Set /P Directory="What directory? "
Cd %Directory%
Set Command=
Goto Entry

:Root
Cd %shadowDir%
Set Command=
Goto Entry

:Clear
Cls
Set Command=
Goto Entry

:Help
Echo.
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo ShadowRain Command List:
Echo.
Echo 	- clear (Alias : cls) -- Clears the Console Window
Echo 	- refresh -- Refreshes the Console Window (For Updates - Mainly a dev command :P)
Echo 	- logout -- Logout of ShadowRain back to the Startup Menu
Echo 	- root -- Takes you to the directory of these files (If you're in another directory)
Echo 	- ls -- Shows the files in the directory
Echo 	- cd -- Allows you to change directory
Echo 	- help (Alias : commands) -- Shows this dialog
Echo 	- time -- Shows the system time
Echo.
Echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Echo.
Set Command=
Goto Entry

:Time
Echo The System Time is [%time%].
Set Command=
Goto Entry
