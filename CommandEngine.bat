@Echo off
SetLocal EnableExtensions EnableDelayedExpansion
If "%1"=="" Goto NO_PARAM
If "%1"=="-v" If "%2"=="0.0.1" Goto 0.0.1
If "%1"=="--test" Goto Test
Exit

:NO_PARAM
Color 0C
Echo -- Unable to run file - No parameter is defined
Exit

:0.0.1
modules\0.0.1.bat

:Test
Echo Test Passed.
Pause>Nul