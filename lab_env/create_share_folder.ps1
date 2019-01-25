New-SmbShare -Name "Gemensam" -Path "C:\shared\volume1\Gemensam" -FullAccess everyone

New-SmbShare -Name "Resurser" -Path "C:\shared\volume1\Resurser" -FullAccess "Amin\Administrator"

Import-Module PowerShellAccessControl