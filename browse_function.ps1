Add-Type -AssemblyName System.Windows.Forms

$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ InitialDirectory = [Environment]::GetFolderPath('Desktop') }


$null = $FileBrowser.ShowDialog()

Write-Host "Is this the file $FileBrowser ? "

