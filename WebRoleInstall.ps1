Install-WindowsFeature -name Web-Server -IncludeManagementTools
Initialize-Disk -Number 2 -PartitionStyle GPT
New-Partition -DiskNumber 2 -DriveLetter E -UseMaximumsize
Format-Volume -DriveLetter F -FileSystem NTFS
