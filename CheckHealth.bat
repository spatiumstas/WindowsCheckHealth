@Echo off
 
:m1
Echo 1 - RestoreHealth
Echo 2 - ScanHealth
Echo 3 - CheckHealth
Echo 4 - Sfc /scannow
Echo 5 - Run all

echo.
Set /p choice="Select: "
if not defined choice goto m1
if "%choice%"=="1" (DISM /Online /Cleanup-Image /RestoreHealth)
if "%choice%"=="2" (DISM /Online /Cleanup-Image /ScanHealth)
if "%choice%"=="3" (DISM /Online /Cleanup-Image /CheckHealth)
if "%choice%"=="4" (sfc /scannow)
if "%choice%"=="5" (
    DISM /Online /Cleanup-Image /RestoreHealth
    DISM /Online /Cleanup-Image /ScanHealth
    DISM /Online /Cleanup-Image /CheckHealth
    sfc /scannow
)

Echo.
Echo.
Echo.
Echo.
goto m1
pause >nul
