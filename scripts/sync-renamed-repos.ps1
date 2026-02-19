# Sync local clone folders and remotes after GitHub repo renames.
# Run from any directory. Base path is the folder containing all cloned repos.
# Usage: .\sync-renamed-repos.ps1 [-BasePath "E:\Projects\Githbu repositories"]

param(
    [string]$BasePath = "E:\Projects\Githbu repositories"
)

$pairs = @(
    @{ Old = "Automatation"; New = "audio-library-automation-bot" },
    @{ Old = "audio_preperation"; New = "audio-preparation-pipeline" },
    @{ Old = "audio_silence_service"; New = "audio-silence-service" },
    @{ Old = "jsonReaquest_XMlResponse"; New = "json-request-xml-response" },
    @{ Old = "EducationSchedulerAPI"; New = "education-scheduler-api" },
    @{ Old = "Medicine_app"; New = "medicine-app" },
    @{ Old = "Console_App"; New = "console-app" },
    @{ Old = "calculator_in_column"; New = "calculator-in-column" },
    @{ Old = "3D-Gripper_OpenCV"; New = "3d-gripper-opencv" },
    @{ Old = "Create-font-in-png-for-LWJGL"; New = "create-font-in-png-for-lwjgl" },
    @{ Old = "BoostyAutomation"; New = "boosty-automation" },
    @{ Old = "health_notifier_backend"; New = "health-notifier-backend" },
    @{ Old = "DesignArhitecture"; New = "design-architecture" }
)

$remoteBase = "https://github.com/KingEGame/"

foreach ($p in $pairs) {
    $oldPath = Join-Path $BasePath $p.Old
    $newPath = Join-Path $BasePath $p.New
    $remoteUrl = $remoteBase + $p.New + ".git"

    if (-not (Test-Path $oldPath -PathType Container)) {
        Write-Host "[SKIP] Folder not found: $($p.Old)"
        continue
    }

    if (Test-Path $newPath -PathType Container) {
        Write-Host "[SKIP] Target already exists: $($p.New) (run remote update only)"
        Set-Location $newPath
        git remote set-url origin $remoteUrl
        Set-Location $BasePath
        continue
    }

    Write-Host "[RENAME] $($p.Old) -> $($p.New)"
    Rename-Item -Path $oldPath -NewName $p.New -ErrorAction Stop
    Set-Location $newPath
    git remote set-url origin $remoteUrl
    Set-Location $BasePath
}

Write-Host "Done. Run 'git fetch' in each folder to verify remotes."
