#PowerShellAccessControl Module 3.0/4.0
Import-Module PowerShellAccessControl



New-Item -ItemType directory -Path C:\shared\volume1\Gemensam
New-SmbShare -Name "Gemensam" -Path "C:\shared\volume1\Gemensam"  
Get-SmbShare "Gemensam" | Add-AccessControlEntry -Principal Everyone -LogicalShareRights FullControl 



New-Item -ItemType directory -Path C:\shared\volume1\Resurser
New-SmbShare -Name "Resurser" -Path "C:\shared\volume1\Resurser" 
Get-SmbShare "Resurser" | Add-AccessControlEntry -Principal Everyone -LogicalShareRights FullControl  

 
New-Item -ItemType directory -Path C:\shared\volume1\Privat
New-SmbShare -Name $env:UserName -Path C:\shared\volume1\Privat
Revoke-SmbShareAccess -Name $env:UserName -AccountName "Domain Admins"
Grant-SmbShareAccess -Name Privat -AccountName $env:USERDOMAIN 



Get-SmbShare -Name Administrator


$env:UserName
$env:USERDOMAIN
$env:USERPROFILE

#Get-SmbShare "Resurser" | Add-AccessControlEntry 

#Block-SmbShareAccess -Name "Resurser" -AccountName 