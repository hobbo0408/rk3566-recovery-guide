$rkdev = "C:\rkdeveloptool\rkdeveloptool.exe"
$loader = "C:\rkdeveloptool\rk3566_lp4x_528_safe.bin"
$out = "$HOME\rk3566-recovery-guide\firmware"

New-Item -ItemType Directory -Force -Path $out | Out-Null

Write-Host "[1/6] Detecting device..."
& $rkdev ld

Write-Host "[2/6] Loading temporary DDR loader..."
& $rkdev db $loader

Write-Host "[3/6] Reading flash info..."
& $rkdev rfi

Write-Host "[4/6] Reading partition table..."
& $rkdev ppt

Write-Host "[5/6] Dumping key partitions..."
& $rkdev rl 0x0 0x4000 "$out\full_boot_backup.bin"
& $rkdev rl 0xA000 0x2000 "$out\dtbo_backup.img"
& $rkdev rl 0xC000 0x800 "$out\vbmeta_backup.img"
& $rkdev rl 0xC800 0x14000 "$out\boot_backup.img"
& $rkdev rl 0x20800 0x32000 "$out\recovery_backup.img"

Write-Host "[6/6] Done."