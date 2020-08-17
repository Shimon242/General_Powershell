# This is some common powershell cmdlets that are useful for incident response investigation and containment

# returns a list of currently executing processes
Get-Process

# Return specificed class attributes
Get-Process [process name] | Select-Object Id, ProcessName, Path, Company, StartTime

# Terminate a process
Get-Process [process name] | Stop-Process

# Remove an item
Get-ItemProperty 'Item Path' | Remove-ItemProperty -Name 'Service Name'

# To get file hashes
# SHA 256 (This is the default of the get-FileHash cmdlet)
Get-FileHash -Path 'C:[Path]'

# MD5
Get-FileHash -Algorithm MD5 -Path 'C:[Path]'

# Create New Item

New-Item -ItemType Directory -Path C:\Users\admin\IoCs

# Copy Item

Copy-Item C:\[Source Path] -Destination C:[Destination Path] -Recurse

# Delete an Item

Remove-Item -Path [Item Path] -Recurse -Force

Remove-Item -Path [Item Path]
