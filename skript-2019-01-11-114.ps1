﻿#
$elements = Import-Csv C:\temp\elements2.csv


$elements
#

$elements.Protons


{
    $col0 = ([string]$file[$count]).Split(',')[0]
    $col2 = ([string]$file[$count]).Split(',')[2]
    $col3 = ([string]$file[$count]).Split(',')[3]

    if ($col2 -eq $col3)
        {echo $col0} 

    }