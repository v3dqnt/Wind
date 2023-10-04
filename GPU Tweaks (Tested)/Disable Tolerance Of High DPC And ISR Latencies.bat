@echo off
setlocal

REM Define registry keys and values
set "Key1=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power"
set "Key2=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power"
set "Values=ExitLatency ExitLatencyCheckEnabled Latency LatencyToleranceDefault LatencyToleranceFSVP LatencyTolerancePerfOverride LatencyToleranceScreenOffIR LatencyToleranceVSyncEnabled RtlCapabilityCheckLatency DefaultD3TransitionLatencyActivelyUsed DefaultD3TransitionLatencyIdleLongTime DefaultD3TransitionLatencyIdleMonitorOff DefaultD3TransitionLatencyIdleNoContext DefaultD3TransitionLatencyIdleShortTime DefaultD3TransitionLatencyIdleVeryLongTime DefaultLatencyToleranceIdle0 DefaultLatencyToleranceIdle0MonitorOff DefaultLatencyToleranceIdle1 DefaultLatencyToleranceIdle1MonitorOff DefaultLatencyToleranceMemory DefaultLatencyToleranceNoContext DefaultLatencyToleranceNoContextMonitorOff DefaultLatencyToleranceOther DefaultLatencyToleranceTimerPeriod DefaultMemoryRefreshLatencyToleranceActivelyUsed DefaultMemoryRefreshLatencyToleranceMonitorOff DefaultMemoryRefreshLatencyToleranceNoContext Latency MaxIAverageGraphicsLatencyInOneBucket MiracastPerfTrackGraphicsLatency MonitorLatencyTolerance MonitorRefreshLatencyTolerance TransitionLatency"

REM Loop through the values and set them in both registry keys
for %%v in (%Values%) do (
    reg add "%Key1%" /v %%v /t REG_DWORD /d 1 /f
    reg add "%Key2%" /v %%v /t REG_DWORD /d 1 /f
)

echo Registry values set successfully.

endlocal
