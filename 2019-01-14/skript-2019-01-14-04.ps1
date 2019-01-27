#This command gets all of the services on the computer and formats the output as a list of 
#properties in which each property is displayed on a separate line 
Get-Service | Format-List


#The format wide command formats the output in wide tables, the difference with the previous
#command is that fromat-wide only displays one property of each object, here being the Name.  
Get-Service | Format-wide

