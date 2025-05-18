<# -- Aliases -- #>

# Powershell
Set-Alias -Name cl -Value Clear-Host

# Git
function Get-GitStatus { 
    & git status $args 
}
New-Alias -Name gs -Value Get-GitStatus

function Set-GitCommit {
    & git commit $args
}
New-Alias -Name c -Value Set-GitCommit

function Get-GitAdd {
    & git add $args
}
New-Alias -Name a -Value Get-GitAdd

function Get-GitPush {
    & git push $args
}
New-Alias -Name p -Value Get-GitPush

<# -- Shell Apppearance -- #>

# starship config
<# $ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell) #>

# oh-my posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\negligible.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\pure.omp.json" | Invoke-Expression


<# -- Module -- #>
Import-Module -Name Terminal-Icons

