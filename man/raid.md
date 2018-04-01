
# RAID

Types of RAID:
  * RAID 0 - concatenation of disks
  * RAID 1 - mirroring of disks
  * RAID 10 - RAID1 of RAID0's
  * RAID 01 - RAID0 of RAID1's
  * RAID 5 - RAID with 1 parity-disk. Survives fail of 1 disk in RAID.
  * RAID 6 - RAID with 2 parity-disks. Survives fail of 2 disks in RAID.
  * RAID 2,3,4 - rarely used.

## Configuring RAID in Linux
In Linux there is `md` tool ("multiple disks"). Its external interface is provided by `mdadm` tool.

You can find short information concerning md driver status in `/proc/mdstat`. Configuration file is stored at `/etc/mdadm.conf`.

