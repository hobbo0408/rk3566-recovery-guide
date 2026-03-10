\# RK3566 Recovery Guide



Tools and documentation for recovering RK3566-based devices such as the Infinity Game Table.



This repository documents how to:



\- recover devices from Maskrom mode

\- repair the boot chain

\- restore firmware partitions

\- understand the RK3566 hardware layout



\## Documentation



Guides are located in the \*\*docs\*\* folder.



\### Recovery



\- docs/unbrick\_from\_maskrom.md

\- docs/troubleshooting.md



\### Firmware



\- docs/boot\_chain.md

\- docs/partition\_map.md



\### Hardware



\- docs/hardware\_overview.md



\## Repository Layout



docs/

Recovery and hardware documentation



firmware/

Firmware backups and partition images



loader/

DDR loaders used for Maskrom recovery



scripts/

Helper scripts for firmware dumping and flashing



\## Requirements



Linux or Windows with:



\- rkdeveloptool

\- USB connection to the device

\- RK3566 DDR loader



\## Warning



Flashing incorrect firmware can permanently brick a device.

Always create backups before modifying partitions.



\## Windows PowerShell Scripts



For users working on Windows:



\- `scripts/backup\_rk3566.ps1`

\- `scripts/restore\_rk3566.ps1`



These scripts use `rkdeveloptool.exe` and a known working RK3566 loader.



\### Example restore



```powershell

powershell -ExecutionPolicy Bypass -File .\\scripts\\restore\_rk3566.ps1

