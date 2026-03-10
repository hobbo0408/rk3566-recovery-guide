\# Maskrom Recovery Flow



When the RK3566 boot chain is damaged the device enters Maskrom mode.



Recovery flow:





Device powered on

│

▼

BootROM fails to boot firmware

│

▼

Maskrom mode

│

▼

Connect USB to PC

│

▼

rkdeveloptool ld

│

▼

rkdeveloptool db loader.bin

│

▼

Flash accessible

│

▼

Restore boot region

│

▼

rkdeveloptool rd

│

▼

Device boots normally





Maskrom allows recovery even when the bootloader is completely broken.

