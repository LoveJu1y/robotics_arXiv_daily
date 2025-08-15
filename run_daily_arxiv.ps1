# =========================================
# PowerShell script to run daily_arxiv.py
# =========================================

# Set project directory
$projectDir = "D:\Em_Ai\arxiv_daily\robotics_arXiv_daily"

# Set Python executable
$pythonExe = "D:\1\anaconda\python.exe"

# Set config file (optional, default: config.yaml)
$configFile = Join-Path $projectDir "config.yaml"

# Change to project directory
Set-Location $projectDir

# Print start message with timestamp
Write-Output "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] Starting daily_arxiv.py"

# Run the Python script
& $pythonExe "$projectDir\daily_arxiv.py" --config_path $configFile

# Check exit code
if ($LASTEXITCODE -eq 0) {
    Write-Output "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] daily_arxiv.py finished successfully"
} else {
    Write-Output "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] daily_arxiv.py exited with code $LASTEXITCODE"
}
