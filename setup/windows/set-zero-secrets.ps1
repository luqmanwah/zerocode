$ErrorActionPreference = "Stop"

Write-Host "ZEROCODE MCP local credential setup" -ForegroundColor Cyan
Write-Host "Secrets are stored as Windows USER environment variables, not in GitHub." -ForegroundColor DarkGray

function Read-SecretPlain([string]$Prompt) {
    $secure = Read-Host $Prompt -AsSecureString
    $ptr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secure)
    try {
        return [Runtime.InteropServices.Marshal]::PtrToStringBSTR($ptr)
    }
    finally {
        [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ptr)
    }
}

$zeabur = Read-SecretPlain "Paste Zeabur Access Token (zat_...)"
if ([string]::IsNullOrWhiteSpace($zeabur)) { throw "Zeabur token is empty." }

$insforgeKey = Read-SecretPlain "Paste InsForge API Key (ik_...)"
if ([string]::IsNullOrWhiteSpace($insforgeKey)) { throw "InsForge API key is empty." }

$insforgeUrl = Read-Host "Paste InsForge API Base URL (https://...insforge.app)"
if ([string]::IsNullOrWhiteSpace($insforgeUrl)) { throw "InsForge API Base URL is empty." }

[Environment]::SetEnvironmentVariable("ZEABUR_TOKEN", $zeabur, "User")
[Environment]::SetEnvironmentVariable("INSFORGE_API_KEY", $insforgeKey, "User")
[Environment]::SetEnvironmentVariable("INSFORGE_API_BASE_URL", $insforgeUrl.TrimEnd('/'), "User")

# Also set them for this PowerShell process so immediate tests can run.
$env:ZEABUR_TOKEN = $zeabur
$env:INSFORGE_API_KEY = $insforgeKey
$env:INSFORGE_API_BASE_URL = $insforgeUrl.TrimEnd('/')

Write-Host ""
Write-Host "Saved:" -ForegroundColor Green
Write-Host "  ZEABUR_TOKEN               = set"
Write-Host "  INSFORGE_API_KEY           = set"
Write-Host "  INSFORGE_API_BASE_URL      = $env:INSFORGE_API_BASE_URL"
Write-Host ""
Write-Host "Restart Codex Desktop after running this script." -ForegroundColor Yellow
