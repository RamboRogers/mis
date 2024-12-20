# PowerShell script to install MIS (Make It So)
$ErrorActionPreference = "Stop"

Write-Host "Installing MIS (Make It So)..." -ForegroundColor Blue

# Create temp directory
$tempDir = Join-Path $env:TEMP "mis_install"
New-Item -ItemType Directory -Force -Path $tempDir | Out-Null

# Download URL
$downloadUrl = "https://raw.githubusercontent.com/RamboRogers/mis/master/bins/mis.zip"
$zipPath = Join-Path $tempDir "mis.zip"

try {
    # Download the zip file
    Write-Host "Downloading MIS..." -ForegroundColor Blue
    Invoke-WebRequest -Uri $downloadUrl -OutFile $zipPath

    # Extract the zip
    Write-Host "Extracting files..." -ForegroundColor Blue
    Expand-Archive -Path $zipPath -DestinationPath $tempDir -Force

    # Find the exe
    $exePath = Get-ChildItem -Path $tempDir -Filter "mis-windows-amd64.exe" -Recurse | Select-Object -First 1

    # Create destination directory in user's profile
    $installDir = "$env:USERPROFILE\.mis"
    New-Item -ItemType Directory -Force -Path $installDir | Out-Null

    # Copy the exe
    Write-Host "Installing MIS to $installDir..." -ForegroundColor Blue
    Copy-Item -Path $exePath.FullName -Destination "$installDir\mis.exe" -Force

    # Add to PATH if not already there
    $userPath = [Environment]::GetEnvironmentVariable("Path", "User")
    if ($userPath -notlike "*$installDir*") {
        Write-Host "Adding MIS to PATH..." -ForegroundColor Blue
        [Environment]::SetEnvironmentVariable(
            "Path",
            "$userPath;$installDir",
            "User"
        )
    }

    Write-Host "MIS installed successfully!" -ForegroundColor Green
    Write-Host "Please restart your terminal, then run 'mis --configure' to set up your AI configuration." -ForegroundColor Blue
}
catch {
    Write-Host "Error installing MIS: $_" -ForegroundColor Red
    exit 1
}
finally {
    # Cleanup
    Remove-Item -Path $tempDir -Recurse -Force -ErrorAction SilentlyContinue
}