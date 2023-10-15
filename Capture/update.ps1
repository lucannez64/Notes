
$folder = "D:\Notes\Capture"

$pollingInterval = 0.1  # Polling interval in seconds

$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
Set-Location -Path $scriptDir  # Set working directory to where this script is located

# Initialize $lastChangeTimes with the current timestamps of files in the folder
$lastChangeTimes = @{}
Get-ChildItem -Path $folder -Filter "*.md" | ForEach-Object {
    $lastChangeTimes[$_.FullName] = $_.LastWriteTime
}

while ($true) {
    $files = Get-ChildItem -Path $folder -Filter "*.md"

    foreach ($file in $files) {
        $lastWriteTime = $file.LastWriteTime
        if ($lastChangeTimes.ContainsKey($file.FullName) -and $lastWriteTime -gt $lastChangeTimes[$file.FullName]) {
            $lastChangeTimes[$file.FullName] = $lastWriteTime
            Write-Host "Change detected in $($file.FullName)"

            # Run the 'notes_converter' command in the current directory
            notes_converter --single-file "$($file.FullName)"
        }
    }

    Start-Sleep -Seconds $pollingInterval
}

