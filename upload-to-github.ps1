param(
    [Parameter(Mandatory=$true)]
    [string]$Username,

    [Parameter(Mandatory=$true)]
    [string]$Repo,

    [Parameter(Mandatory=$true)]
    [string]$Token
)

$headers = @{
    "Authorization" = "token $Token"
    "Accept"        = "application/vnd.github.v3+json"
    "User-Agent"    = "Edukids-Uploader"
}

Write-Host "1. Memeriksa repository $Username/$Repo di GitHub..." -ForegroundColor Cyan

# Cek apakah repo sudah ada, jika belum coba buat
$repoUri = "https://api.github.com/repos/$Username/$Repo"
try {
    $existing = Invoke-RestMethod -Uri $repoUri -Headers $headers -Method Get -ErrorAction Stop
    Write-Host "Repository ditemukan!" -ForegroundColor Green
} catch {
    Write-Host "Repository belum ada, membuat repository baru..." -ForegroundColor Yellow
    $createBody = @{
        name        = $Repo
        description = "Edukids Privat Web App - Management System"
        private     = $false
    } | ConvertTo-Json

    try {
        $existing = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Headers $headers -Method Post -Body $createBody -ContentType "application/json" -ErrorAction Stop
        Write-Host "Repository $Repo berhasil dibuat di GitHub!" -ForegroundColor Green
    } catch {
        Write-Host "Gagal membuat repo: $_" -ForegroundColor Red
        exit 1
    }
}

# Daftar file yang diupload
$files = @("index.html", "server.ps1", "README.md", ".gitignore")
$folder = $PSScriptRoot

foreach ($file in $files) {
    $filePath = Join-Path $folder $file
    if (Test-Path $filePath) {
        Write-Host "Mengunggah $file..." -ForegroundColor Cyan
        $bytes = [System.IO.File]::ReadAllBytes($filePath)
        $base64 = [Convert]::ToBase64String($bytes)

        $fileUri = "https://api.github.com/repos/$Username/$Repo/contents/$file"
        $sha = $null
        try {
            $current = Invoke-RestMethod -Uri $fileUri -Headers $headers -Method Get -ErrorAction SilentlyContinue
            if ($current.sha) { $sha = $current.sha }
        } catch {}

        $body = @{
            message = "Upload $file"
            content = $base64
        }
        if ($sha) { $body["sha"] = $sha }

        $jsonBody = $body | ConvertTo-Json

        try {
            $res = Invoke-RestMethod -Uri $fileUri -Headers $headers -Method Put -Body $jsonBody -ContentType "application/json"
            Write-Host " Berhasil mengunggah $file" -ForegroundColor Green
        } catch {
            Write-Host " Gagal mengunggah $file : $_" -ForegroundColor Red
        }
    }
}

Write-Host "`nSELESAI! Project Edukids Privat telah masuk ke GitHub:" -ForegroundColor Green
Write-Host "https://github.com/$Username/$Repo" -ForegroundColor Yellow
