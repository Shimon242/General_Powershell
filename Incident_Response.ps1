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
Get-FileHash -Path 'C:\Users\admin\AppData\Roaming\0319B08F-2B65-4192-B2D2-1E2F62087064\IMAP Service\imapsv.exe'

# MD5
Get-FileHash -Algorithm MD5 -Path 'C:\Users\admin\AppData\Roaming\0319B08F-2B65-4192-B2D2-1E2F62087064\IMAP Service\imapsv.exe'

# Create New Item

New-Item -ItemType Directory -Path C:\Users\admin\IoCs

# Copy Item

Copy-Item C:\Users\admin\AppData\Roaming\0319B08F-2B65-4192-B2D2-1E2F62087064\ -Destination C:\Users\admin\IoCs\ -Recurse

# Delete an Item

Remove-Item -Path $env:APPDATA\0319B08F-2B65-4192-B2D2-1E2F62087064\ -Recurse -Force

Remove-Item -Path $env:USERPROFILE\Desktop\Serial.exe
