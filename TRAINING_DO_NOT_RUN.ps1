
Update-Help -Verbose -Force -ErrorAction SilentlyContinue
write-host "Hej där"
write-host -foregroundcolor yellow -BackgroundColor blue "Hello World"
help  Clear-Host -Online

[int] $b=7 
$a=4
$a.getType().NameInt32
$a+$b 
$a="4"
$a. getType().Name 
$a+$b
$b+$a
[double] $a=4.0
[double] $b=3.5
$a-$b
$name=Read-Host "What is your name"$name$workaddress=@"Main street,geoerge square,Edingburgh"@$workaddress$myarray=Get-ChildItem
($myarray).count
$myarray[5]

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


Get-Content C:\powershell\address.txt

$address=Get-Content C:\powershell\address.txt

$workaddress=@"Nackademin,tomtebodavägen 3A,Stockholm"@

$myname="AMIN JIRARI" 

$myname.ToUpper()

$myname.ToLower()





$myList = 5.6, 4.5, 3.3, 13.2, 4.0, 34.33, 34.0, 45.45, 99.993, 11123

write-host("Print all the array elements")
$myList

write-host("Get the length of array")
$myList.Length

write-host("Get Second element of array")
$myList[1]

write-host("Get partial array")
$subList = $myList[1..3]

write-host("print subList")
$subList

write-host("using for loop")
for ($i = 0; $i -le ($myList.length - 1); $i += 1) {
  $myList[$i]
}

write-host("using forEach Loop")
foreach ($element in $myList) {
  $element
}

write-host("using while Loop")
$i = 0
while($i -lt 4) {
  $myList[$i];
  $i++
}

write-host("Assign values")
$myList[1] = 10
$myList


$myList = @(0..4)

write-host("Print array")
$myList

$myList = @(0..4)

write-host("Assign values")
$myList[1]  = 10
$myList



Get-ExecutionPolicy -Scope LocalMachine





Copy-Item 'D:\temp\Test Folder' 'D:\temp\Test Folder1'
Copy-Item 'D:\temp\Test Folder' -Destination 'D:\temp\Test Folder1'
Remove-Item 'D:\temp\Test Folder1'
Remove-Item 'D:\temp\Test Folder' -Recurse
Move-Item D:\temp\Test D:\temp\Test1
Rename-Item D:\temp\Test D:\temp\Test1
Get-Content D:\temp\Test\test.txt
#check folder existance
Test-Path D:\temp\test

Get-Date -DisplayHint Date
set-date -Date (Get-Date).AddDays(1)







