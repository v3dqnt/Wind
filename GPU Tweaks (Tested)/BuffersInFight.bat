echo Setting BuffersInFlight
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "BuffersInFlight" /t REG_DWORD /d "20" /f
timeout /t 1 /nobreak > NUL