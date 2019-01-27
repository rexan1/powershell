$a=3
Write-Host $a
$a.GetType()

[double] $b=3.3
Write-Host $b
$b.GetType()

$c="3.3"
Write-Host $c
$c.GetType()

[double] $d=$a + $b
Write-Host $d
$d.GetType()

$a=$null
$b=$null
$d=$null
[int] $a=3.4
[int] $b=3.6
$d=$a + $b
Write-Host $d

