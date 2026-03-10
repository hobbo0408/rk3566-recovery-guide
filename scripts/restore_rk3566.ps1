$rkdev = "C:\rkdeveloptool\rkdeveloptool.exe"
$loader = "C:\rkdeveloptool\rk3566_lp4x_528_safe.bin"
$fw = "$HOME\rk3566-recovery-guide\firmware"

Write-Host "[1/6] Detecting device..."
& $rkdev ld

Write-Host "[2/6] Loading temporary DDR loader..."
& $rkdev db $loader

Write-Host "[3/6] Restoring boot region..."
& $rkdev wl 0x0 "$fw\full_boot_backup.bin"

Write-Host "[4/6] Re-loading loader..."
& $rkdev db $loader

Write-Host "[5/6] Restoring key partitions if present..."
if (Test-Path "$fw\dtbo_backup.img")     { & $rkdev wlx dtbo "$fw\dtbo_backup.img" }
if (Test-Path "$fw\vbmeta_backup.img")   { & $rkdev wlx vbmeta "$fw\vbmeta_backup.img" }
if (Test-Path "$fw\boot_backup.img")     { & $rkdev wlx boot "$fw\boot_backup.img" }
if (Test-Path "$fw\recovery_backup.img") { & $rkdev wlx recovery "$fw\recovery_backup.img" }

Write-Host "[6/6] Rebooting..."
& $rkdev rd

Write-Host "Restore complete."