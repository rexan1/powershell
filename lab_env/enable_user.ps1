Get-ADUser -Filter '(surname -eq "alan") -or (surname -eq "walker")' | 
    Set-ADUser -Enabled $true
