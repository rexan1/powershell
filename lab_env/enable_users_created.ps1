Get-ADUser -Filter '(surname -eq "Bonapart") -or (surname -eq "Marley")' | 
    Set-ADUser -Enabled $true


#Get-ADGroupMember -Identity TestQAGroup


