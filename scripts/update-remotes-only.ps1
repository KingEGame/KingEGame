# Update origin remote URL in local clones of the 13 renamed repos.
# Use this when folders already have the new names but remotes may still point to old URLs.
# Usage: .\update-remotes-only.ps1 [-BasePath "E:\Projects\Githbu repositories"]

param(
    [string]$BasePath = "E:\Projects\Githbu repositories"
)

$repos = @(
    "audio-library-automation-bot",
    "audio-preparation-pipeline",
    "audio-silence-service",
    "json-request-xml-response",
    "education-scheduler-api",
    "medicine-app",
    "console-app",
    "calculator-in-column",
    "3d-gripper-opencv",
    "create-font-in-png-for-lwjgl",
    "boosty-automation",
    "health-notifier-backend",
    "design-architecture"
)

$remoteBase = "https://github.com/KingEGame/"

foreach ($name in $repos) {
    $path = Join-Path $BasePath $name
    $remoteUrl = $remoteBase + $name + ".git"

    if (-not (Test-Path $path -PathType Container)) {
        Write-Host "[SKIP] Folder not found: $name"
        continue
    }

    Set-Location $path
    if (Test-Path .git -PathType Container) {
        git remote set-url origin $remoteUrl
        Write-Host "[OK] $name -> origin updated"
    } else {
        Write-Host "[SKIP] Not a git repo: $name"
    }
    Set-Location $BasePath
}

Write-Host "Done. Run 'git fetch' in each folder to verify."
