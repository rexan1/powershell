#We set up the date here
[datetime] $d="31 may 1989"


#
((get-date).Second-$d.Second)

If ($d -gt 1000000) {"Bigger than 1M"}


#
((get-date).Minute-$d.Minute)

If ($d -gt 1000000) {"Bigger than 1M"}



$h = ((get-date).Hour-$d.Hour)

If ($d.Hour -gt 250000) {"Bigger than 1M"}


((get-date)-$d)


