# Script to ensure Android emulator always starts on port 5554
# This kills all running emulators and restarts ADB before launching

Write-Host "Limpando emuladores e ADB..." -ForegroundColor Yellow

# Kill all emulators
$adbPath = "C:\Users\Nataniel\AppData\Local\Android\Sdk\platform-tools\adb.exe"

# Get all running emulators
$devices = & $adbPath devices | Select-String "emulator-"

if ($devices) {
    Write-Host "Matando emuladores existentes..." -ForegroundColor Yellow
    foreach ($device in $devices) {
        $deviceId = ($device -split '\s+')[0]
        & $adbPath -s $deviceId emu kill 2>$null
    }
    Start-Sleep -Seconds 2
}

# Kill and restart ADB server
Write-Host "Reiniciando ADB server..." -ForegroundColor Yellow
& $adbPath kill-server
Start-Sleep -Seconds 1
& $adbPath start-server

Write-Host "Pronto! Agora abra seu emulador manualmente." -ForegroundColor Green
Write-Host "O proximo emulador sera emulator-5554" -ForegroundColor Cyan
