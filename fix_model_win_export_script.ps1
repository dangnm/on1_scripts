
# Variables
[string]$Filepath = $args[0] -replace "'"  # 2. variable in array contains the filepath
[string]$ScriptDir = Split-Path -Path $MyInvocation.MyCommand.Path -Parent
[string]$ExifToolPath = $ScriptDir + "\exiftool.exe"

& $ExifToolPath -Model="X-T2" -overwrite_original  "$Filepath"

<#
[string]$Log = $env:TEMP + "\on1_shell_script.log"
Start-Transcript -Path $Log | Out-Host
Get-Location | Out-Host
Write-Output " Filepath  $Filepath" | Out-Host
Write-Output " CurrentDir $ExifToolPath" | Out-Host
Write-Output ""`n | Out-Host
Stop-Transcript
#>
