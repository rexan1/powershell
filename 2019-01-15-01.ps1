Add-Type -AssemblyName System.Windows.Forms


$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ InitialDirectory = [Environment]::GetFolderPath('Desktop') }


$null = $FileBrowser.ShowDialog()


$D = Read-Host "Provide the script location:"


$cert = New-SelfSignedCertificate -Subject "My Code Signing Certificate” -Type CodeSigningCert -CertStoreLocation cert:\LocalMachine\My


Export-Certificate -cert $cert -FilePath C:\powershell\cert.crt 


Import-Certificate -CertStoreLocation Cert:\CurrentUser\Root -FilePath C:\powershell\cert.crt


Set-AuthenticodeSignature -FilePath $D -Certificate $cert


#C:\powershell\report-this-year2.ps1


Write-Host "The script has been scuccessfully signed"


Get-ExecutionPolicy -Scope LocalMachine 


Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine -Force 


#Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine -Force




