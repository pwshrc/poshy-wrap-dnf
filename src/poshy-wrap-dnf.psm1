#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest



if (-not (Test-Command dnf) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

# List packages
function Invoke-DnfList {
    dnf list @arg
}
Set-Alias -Name dnfl -Value Invoke-DnfList
Export-ModuleMember -Function Invoke-DnfList -Alias dnfl

# List installed packages
function Invoke-DnfListInstalled {
    dnf list installed @args
}
Set-Alias -Name dnfli -Value Invoke-DnfListInstalled
Export-ModuleMember -Function Invoke-DnfListInstalled -Alias dnfli

# List package groups
function Invoke-DnfGrouplist {
    dnf grouplist @args
}
Set-Alias -Name dnfgl -Value Invoke-DnfGrouplist
Export-ModuleMember -Function Invoke-DnfGrouplist -Alias dnfgl

# Generate metadata cache
function Invoke-DnfMakecache {
    dnf makecache @args
}
Set-Alias -Name dnfmc -Value Invoke-DnfMakecache
Export-ModuleMember -Function Invoke-DnfMakecache -Alias dnfmc

# Show package information
function Invoke-DnfInfo {
    dnf info @args
}
Set-Alias -Name dnfp -Value Invoke-DnfInfo
Export-ModuleMember -Function Invoke-DnfInfo -Alias dnfp

# Search package
function Invoke-DnfSearch {
    dnf search @args
}
Set-Alias -Name dnfs -Value Invoke-DnfSearch
Export-ModuleMember -Function Invoke-DnfSearch -Alias dnfs

# Upgrade package
function Invoke-DnfUpgrade {
    sudo dnf upgrade @args
}
Set-Alias -Name dnfu -Value Invoke-DnfUpgrade
Export-ModuleMember -Function Invoke-DnfUpgrade -Alias dnfu

# Install package
function Invoke-DnfInstall {
    sudo dnf install @args
}
Set-Alias -Name dnfi -Value Invoke-DnfInstall
Export-ModuleMember -Function Invoke-DnfInstall -Alias dnfi

# Reinstall package
function Invoke-DnfReinstall {
    sudo dnf reinstall @args
}
Set-Alias -Name dnfri -Value Invoke-DnfReinstall
Export-ModuleMember -Function Invoke-DnfReinstall -Alias dnfri

# Install package group
function Invoke-DnfGrouppinstall {
    sudo dnf groupinstall @args
}
Set-Alias -Name dnfgi -Value Invoke-DnfGrouppinstall
Export-ModuleMember -Function Invoke-DnfGrouppinstall -Alias dnfgi

# Remove package
function Invoke-DnfRemove {
    sudo dnf remove @args
}
Set-Alias -Name dnfr -Value Invoke-DnfRemove
Export-ModuleMember -Function Invoke-DnfRemove -Alias dnfr

# Remove package group
function Invoke-DnfGroupremove {
    sudo dnf groupremove @args
}
Set-Alias -Name dnfgr -Value Invoke-DnfGroupremove
Export-ModuleMember -Function Invoke-DnfGroupremove -Alias dnfgr

# Clean cache
function Invoke-DnfCleanAll {
    sudo dnf clean all @args
}
Set-Alias -Name dnfc -Value Invoke-DnfCleanAll
Export-ModuleMember -Function Invoke-DnfCleanAll -Alias dnfc
