\# RK3566 Boot Flow



The RK3566 follows a multi-stage boot process.





Power On

│

▼

BootROM (inside RK3566)

│

├── Normal boot

│ │

│ ▼

│ Bootloader region (first 8MB)

│ │

│ ▼

│ U-Boot

│ │

│ ▼

│ Trust Firmware

│ │

│ ▼

│ Linux Kernel

│ │

│ ▼

│ Android System

│

└── Boot failure

│

▼

Maskrom Mode

│

▼

rkdeveloptool recovery

