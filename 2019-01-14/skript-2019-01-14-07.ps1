#
get-eventlog -computername "amin" -entrytype Warning,Error -logname system | measure

#
get-eventlog -computername "amin" -entrytype Warning,Error -logname system -After (Get-Date).AddDays(-1) | measure

#
get-eventlog -computername "amin" -entrytype Warning,Error -logname system -After (Get-Date).AddDays(-1) | Sort-Object -Unique


get-eventlog -computername "amin" -entrytype Warning,Error -logname system -Newest 100 | Sort-Object -Unique
#
#$warnings = Get-EventLog system -After (Get-Date).AddDays(-1) | Sort-Object -Property EntryType -Unique | Measure-Object | Select-Object -ExpandProperty 


if($warnings -gt 2) {
Write-Host "WARNING"
}
#

$warnings | Get-Member 


Get-Help Sort-Object -examples
