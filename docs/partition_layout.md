\# RK3566 Partition Layout



Example GPT layout from rkdeveloptool:





Flash Storage (eMMC)

│

├── security

├── uboot

├── trust

├── misc

├── dtbo

├── vbmeta

├── boot

├── recovery

├── backup

├── cache

├── metadata

├── baseparameter

├── super

│ ├── system

│ ├── vendor

│ ├── product

│ └── system\_ext

└── userdata





Important partitions:



| Partition | Purpose |

|-----------|--------|

| security | early boot verification |

| uboot | main bootloader |

| trust | ARM trusted firmware |

| boot | kernel + ramdisk |

| recovery | recovery environment |

| super | Android dynamic partitions |

| userdata | apps and user data |

