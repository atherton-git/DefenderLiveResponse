<#
##################################################################################################################
# Microsoft MDATP CxE
#
# GetHostFiles.ps1
# v1.0 190314 Initial creation - Creates a copy of machine's hosts file
##################################################################################################################
#>

<#
.SYNOPSIS
    Get machine hosts file
.DESCRIPTION
    Creates a copy of machine's hosts file.
#>
BEGIN
{
    $HostsFilePath = "$env:SystemRoot\system32\Drivers\etc\hosts"
    $targetHostsFilePath = $baseDirectory + $env:computername + "_HostFile" + (get-date -f _yyyyMMdd-HHmmss)+".txt"
}
PROCESS
{
    if (Test-Path $HostsFilePath) 
    {
        Get-content $HostsFilePath | out-file $targetHostsFilePath
        write-host "successfully export host file to:" 
        write-host $targetHostsFilePath    
    }
    else 
    {
        Write-host "can not find hosts file"
    }
}
