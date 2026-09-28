$ErrorActionPreference = "Continue"

Write-Host "ZEROCODE environment verification" -ForegroundColor Cyan

function Test-Command($name) {
    $cmd = Get-Command $name -ErrorAction SilentlyContinue
    if ($cmd) {
        Write-Host "[OK] $name -> $($cmd.Source)" -ForegroundColor Green
        return $true
    }
    Write-Host "[MISSING] $name" -ForegroundColor Red
    return $false
}

$nodeOk = Test-Command "node"
$npxOk = Test-Command "npx"
$codexOk = Test-Command "codex"

Write-Host ""
Write-Host "Credentials:"
foreach ($name in @("ZEABUR_TOKEN","INSFORGE_API_KEY","INSFORGE_API_BASE_URL")) {
    $value = [Environment]::GetEnvironmentVariable($name, "User")
    if ([string]::IsNullOrWhiteSpace($value)) {
        Write-Host "[MISSING] $name" -ForegroundColor Red
    } else {
        if ($name -like "*URL") {
            Write-Host "[OK] $name = $value" -ForegroundColor Green
        } else {
            Write-Host "[OK] $name = set (hidden)" -ForegroundColor Green
        }
    }
}

if ($codexOk) {
    Write-Host ""
    Write-Host "Codex MCP servers:" -ForegroundColor Cyan
    codex mcp list
}

if ($nodeOk -and $npxOk) {
    Write-Host ""
    Write-Host "Package availability tests:" -ForegroundColor Cyan
    npx -y @zeabur/mcp-server --help 2>$null | Select-Object -First 5
    npx -y @insforge/mcp@latest --help 2>$null | Select-Object -First 5
}

Write-Host ""
Write-Host "If project MCP servers do not appear, trust the zerocode repository in Codex and restart Codex Desktop." -ForegroundColor Yellow
