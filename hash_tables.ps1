$subnet = @{"32" = "255.255.255.255"; "8" = "255.0.0.0"; "16" = "255.255.0.0"; "0" = "0.0.0.0";}

$subnet

$subnet.Add("24", "255.255.255.0")

$subnet.Add("16", "255.255.255.0")

$subnet.Get_Item("16")

$subnet.ContainsKey("24")

$subnet | Sort-Object

$subnet.GetEnumerator() | Sort-Object Name

$subnet.GetEnumerator() | Sort-Object Value



