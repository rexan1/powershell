# Table name
$tabName = “Report”
 
# Create Table object
$table = New-Object system.Data.DataTable “$tabName”
 
# Define Columns
$col1 = New-Object system.Data.DataColumn "User name",([string])
$col2 = New-Object system.Data.DataColumn "Creation date",([string])
$col3 = New-Object system.Data.DataColumn "Last logon date",([string])
$col4 = New-Object system.Data.DataColumn "Locked",([string])
$col5 = New-Object system.Data.DataColumn "Last password reset",([string])
$col6 = New-Object system.Data.DataColumn "Enabled",([string])
 
# Add the Columns
$table.columns.add($col1)
$table.columns.add($col2)
$table.columns.add($col3)
$table.columns.add($col4)
$table.columns.add($col5)
$table.columns.add($col6)


# Input file
$users = Get-Content "C:\temp\users.txt"
 
ForEach ($user in $users ) 
{
        $userdata = (Get-ADUser -identity $user -properties displayname,created,lastlogondate,lockedout,passwordlastset,enabled ) 
 
        # Create a row
        $row = $table.NewRow()
  
        # Enter data in the row
        $row."User name" = ($userdata."displayname")
        $row."Creation date" = ($userdata."created")
        $row."Last logon date" = ($userdata."LastLogonDate")
        $row."Locked" = ($userdata."Lockedout")
        $row."Last password reset" = ($userdata."PasswordLastSet")
        $row."Enabled" = ($userdata.Enabled)
 
        # Add the row to the table
        $table.Rows.Add($row)
}

# Creating head style
$Head = @"
  
<style>
  body {
    font-family: "Arial";
    font-size: 8pt;
    color: #4C607B;
    }
  th, td { 
    border: 1px solid #e57300;
    border-collapse: collapse;
    padding: 5px;
    }
  th {
    font-size: 1.2em;
    text-align: left;
    background-color: #003366;
    color: #ffffff;
    }
  td {
    color: #000000;
    }
  .even { background-color: #ffffff; }
  .odd { background-color: #bfbfbf; }
</style>
  
"@
 
# Creating body
[string]$body = [PSCustomObject]$table | select -Property "User name","Enabled","Creation date","Last logon date","Locked","Last password reset" | sort -Property "User name"  | ConvertTo-HTML -head $Head -Body "<font color=`"Black`"><h4>User info report</h4></font>"    

# Setup email parameters
$subject = "User info report - " + $date
$priority = "Normal"
#$smtpServer = "smtp.company.com"
$emailFrom = "aminjirari@hotmail.com"
$mailsend = ((Get-ADUser -Identity $ENV:Username -Properties mail).mail ) 
$emailTo = $mailsend
  
# Send the report email
Send-MailMessage -To $emailTo -Subject $subject -BodyAsHtml $body -SmtpServer $smtpServer -From $emailFrom -Priority $priority  
 
