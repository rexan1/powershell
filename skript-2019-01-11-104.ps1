
$people = @{"amin" = "1989-31-05";"filip" = "1992-25-05";}


#Write-Host "here is a list of names" 
 

#$people.GetEnumerator() | Select-Object Name


$name = Read-Host "ask for a person" 


$people.Get_Item("$name")

