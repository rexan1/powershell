"TestQAGroup","TestManagersGroup","TestDevGroup" | 
    ForEach-Object {New-ADGroup -Name $_ -GroupScope Global}