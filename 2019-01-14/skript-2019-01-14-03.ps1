# Creates a file named test2
New-Item -Path 'C:\temp\test2.txt' -ItemType File


# Writes the present date as text in the file test2 
Add-Content -Path C:\temp\test2.txt -Value (Get-Date)


# Writes text to test2
Add-Content -Path 'C:\temp\test2.txt' 'Välkommen Hem'


#Compares the content of the text file test with test 2 
Compare-Object -ReferenceObject $(Get-Content C:\temp\test.txt) -DifferenceObject $(Get-Content C:\temp\test2.txt) -IncludeEqual


