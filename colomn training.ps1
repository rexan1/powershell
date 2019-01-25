$file = Get-Content "C:\temp\Members.csv"

for ($a = 1; $a -lt $file.Length; $a++)
{
    ([string]$file[$a]).Split(',')[3] | Out-Host;
    }






    $file = Get-Content "C:\temp\Members.csv"

for ($count = 1; $count -lt $file.Length; $count++)

{
    $col0 = ([string]$file[$count]).Split(',')[0]
    $col2 = ([string]$file[$count]).Split(',')[2]
    $col3 = ([string]$file[$count]).Split(',')[3]

    if ($col2 -eq $col3)
        {echo $col0} 

    }
