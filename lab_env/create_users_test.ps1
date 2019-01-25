#Get-ADGroup $env:COMPUTERNAME| Get-ADPrincipalGroupMembership 

$names = "Bob Marley","Lisa Bonapart","Casey Newheart"

$departments = "Test","Dev","QA"

foreach($name in $names){
    foreach($department in $departments){
            $username = "{0}{1}" -f $name.substring(0,1), $name.split()[1]

            $user = New-ADUser -GivenName $name.split()[0] `
                               -Surname $name.split()[1] `
                               -Name "$name$department" `
                               -AccountPassword (ConvertTo-SecureString -String "changeme1!" -AsPlainText -Force) `
                               -Department $department `
                               -UserPrincipalName "$username$department@amin.lab" `
                               -SamAccountName "$username$department" `
                               -PassThru
            Get-ADGroup -filter 'name -like "test*"' | Add-ADGroupMember -Members $user
            }
}                

Get-ADUser -Filter '(surname -eq "Bonapart") -or (surname -eq "Marley")' | 
    Set-ADUser -Enabled $true
