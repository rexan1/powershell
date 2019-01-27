New-Item -Path 'C:\temp' -ItemType Directory


New-Item -Path 'C:\temp\test.txt' -ItemType File 


Add-Content -Path 'C:\temp\test.txt' 'Välkommen till Nackademin'


Clear-Content -Path 'C:\temp\test.txt'


Add-Content -Path C:\temp\test.txt -Value 'Välkommen till Nackademin'


Add-Content -Path C:\temp\test.txt -Value (Get-Date)

