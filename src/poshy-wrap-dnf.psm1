#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest
#Requires -Modules @{ ModuleName = "poshy-lucidity"; RequiredVersion = "0.4.1" }



if (-not (Test-Command dnf) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

# List packages
function Invoke-DnfList {
    dnf list @arg
}
Set-Alias -Name dnfl -Value Invoke-DnfList

# List installed packages
function Invoke-DnfListInstalled {
    dnf list installed @args
}
Set-Alias -Name dnfli -Value Invoke-DnfListInstalled

# List package groups
function Invoke-DnfGrouplist {
    dnf grouplist @args
}
Set-Alias -Name dnfgl -Value Invoke-DnfGrouplist

# Generate metadata cache
function Invoke-DnfMakecache {
    dnf makecache @args
}
Set-Alias -Name dnfmc -Value Invoke-DnfMakecache

# Show package information
function Invoke-DnfInfo {
    dnf info @args
}
Set-Alias -Name dnfp -Value Invoke-DnfInfo

# Search package
function Invoke-DnfSearch {
    dnf search @args
}
Set-Alias -Name dnfs -Value Invoke-DnfSearch

# Upgrade package
function Invoke-DnfUpgrade {
    sudo dnf upgrade @args
}
Set-Alias -Name dnfu -Value Invoke-DnfUpgrade

# Install package
function Invoke-DnfInstall {
    sudo dnf install @args
}
Set-Alias -Name dnfi -Value Invoke-DnfInstall

# Reinstall package
function Invoke-DnfReinstall {
    sudo dnf reinstall @args
}
Set-Alias -Name dnfri -Value Invoke-DnfReinstall

# Install package group
function Invoke-DnfGrouppinstall {
    sudo dnf groupinstall @args
}
Set-Alias -Name dnfgi -Value Invoke-DnfGrouppinstall

# Remove package
function Invoke-DnfRemove {
    sudo dnf remove @args
}
Set-Alias -Name dnfr -Value Invoke-DnfRemove

# Remove package group
function Invoke-DnfGroupremove {
    sudo dnf groupremove @args
}
Set-Alias -Name dnfgr -Value Invoke-DnfGroupremove

# Clean cache
function Invoke-DnfCleanAll {
    sudo dnf clean all @args
}
Set-Alias -Name dnfc -Value Invoke-DnfCleanAll


Export-ModuleMember -Function * -Alias *
