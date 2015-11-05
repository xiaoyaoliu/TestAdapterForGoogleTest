@echo on

if "%1"=="" goto _USAGE

echo Setting versions to %1
PowerShell.exe -ExecutionPolicy Bypass -File "SetVersion.ps1" -version "%1"
goto :eof

:_USAGE
echo Usage  : SetVersion ^<version^>, where ^<version^> should be ^<major^>.^<minor^>.^<revision^>.^<build^>
echo Example: SetVersion 1.0.1.42
