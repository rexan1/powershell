$names = Get-Content C:\csvtest.csv



foreach($name in $names){
    
            $firstname = $name.split()[0].substring(0,3)
            $lastname = $name.split()[1].substring(0,3)
            $username = $firstname+$lastname   
            $user = New-ADUser -GivenName $name.split()[0] `
                               -Surname $name.split()[1] `
                               -Name "$name" `
                               -AccountPassword (ConvertTo-SecureString -String "changeme1!" -AsPlainText -Force) `
                               -UserPrincipalName "$username@amin.lab" `
                               -SamAccountName "$username" `
                               -PassThru
            
            }


