$cert = New-SelfSignedCertificate -Subject "My Code Signing Certificate” -Type CodeSigningCert -CertStoreLocation cert:\LocalMachine\My

#Move-Item -Path $cert.PSPath -Destination "Cert:\CurrentUser\Root"

Export-Certificate -cert $cert -FilePath C:\powershell\cert.crt 

Import-Certificate -CertStoreLocation Cert:\CurrentUser\Root -FilePath C:\powershell\cert.crt

Set-AuthenticodeSignature -FilePath C:\powershell\report-this-year2.ps1 -Certificate $cert


#Move-Item -Path $cert.PSPath -Destination "cert:\CurrentUser\Root"
