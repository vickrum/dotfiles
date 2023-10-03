# > PowerShellGet\Install-Module posh-git -Scope CurrentUser
Import-Module posh-git

$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$GitPromptSettings.DefaultPromptPath.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPrefix = "`r`n"
$GitPromptSettings.DefaultPromptSuffix = "`r`n> "