Initialize-Disk -Number 2 -PartitionStyle GPT
New-Partition -DiskNumber 2 -DriveLetter F -UseMaximumsize
Format-Volume -DriveLetter F -Filesystem NTFS
