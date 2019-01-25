#We create a list of legumes in the variabel gronlist
$gronlist = "tomatoes", "carrots", "onions","cucomber","paprika", "tomatoes", "onions"


#Assign the path to the file we are going to  create to the variabel paf
$paf = 'C:\temp\gronsaker.txt'


#Creates a text file named gronsaker.txt
New-Item $paf -ItemType File


#Writes the list of legumes in $gronlist into the textfile 
Add-Content $paf $gronlist 


#Sorts the list in the textfile by alphabetical order and only presents the unique ones
Get-Content $paf | sort | get-unique


#Presents the nubmer of unique legumes in the list
Get-Content $paf | Select-Object -Unique | Measure-Object








