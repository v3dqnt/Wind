@echo off

cd %temp%
if not exist SetTimerResolutionService.exe (
	::https://forums.guru3d.com/threads/windows-timer-resolution-tool-in-form-of-system-service.376458/
	curl -g -L -# -o "C:\VTRL\Resources\SetTimerResolutionService.exe" "https://github.com/auraside/HoneCtrl/raw/main/Files/SetTimerResolutionService.exe" >nul 2>&1
	%windir%\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /i SetTimerResolutionService.exe >nul 2>&1
)
sc config "STR" start=auto >nul 2>&1
start /b net start STR >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /deletevalue useplatformclock >nul 2>&1
for /F "tokens=2 delims==" %%G in ('wmic OS get buildnumber /value') do for /F "tokens=*" %%x in ("%%G") do (set "VAR=%%~x")
if !VAR! geq 19042 (
	bcdedit /deletevalue useplatformtick >nul 2>&1
) else (
	bcdedit /set useplatformtick yes >nul 2>&1
)