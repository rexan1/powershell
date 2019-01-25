#PowerShellAccessControl Module 3.0/4.0
Import-Module PowerShellAccessControl


New-Item -ItemType directory -Path C:\shared\volume1\Gemensam
New-SmbShare -Name "Gemensam" -Path "C:\shared\volume1\Gemensam"  
Get-SmbShare "Gemensam" | Add-AccessControlEntry -Principal Everyone -LogicalShareRights FullControl 



New-Item -ItemType directory -Path C:\shared\volume1\Resurser
New-SmbShare -Name "Resurser" -Path "C:\shared\volume1\Resurser" 
Get-SmbShare "Resurser" | Add-AccessControlEntry -Principal Everyone -LogicalShareRights FullControl  


$names = Get-Content C:\csvtest.csv
foreach($name in $names){
    
            $firstname = $name.split()[0].substring(0,3)
            $lastname = $name.split()[1].substring(0,3)
            $username = $firstname+$lastname
              
New-Item -ItemType directory -Path C:\shared\volume1\$username
New-SmbShare -Name $username -Path C:\shared\volume1\$username
Revoke-SmbShareAccess -Name $username -AccountName "Everyone"
Grant-SmbShareAccess -Name $username -AccountName $username

}


 



Get-SmbShare -Name Administrator


$env:UserName
$env:USERDOMAIN
$env:USERPROFILE

#Get-SmbShare "Resurser" | Add-AccessControlEntry 

#Block-SmbShareAccess -Name "Resurser" -AccountName 