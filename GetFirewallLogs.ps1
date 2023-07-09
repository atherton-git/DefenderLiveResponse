<#
##################################################################################################################
# Microsoft MDATP CxE
# 
# GetFirewallLogs.ps1
# v1.0 190314 Initial creation - Gets the Windows Firewall logs
##################################################################################################################
#>

<#
.SYNOPSIS
    Get windows firewall logs
.DESCRIPTION
    Get machien windows firewall logs and print logs to screen.
#>
BEGIN
{
    $FireWallLog = "$env:windir\system32\LogFiles\Firewall\pfirewall.log"
    $targetLogFilePath = $baseDirectory + $env:computername + "_FirewallLogs" + (get-date -f _yyyyMMdd-HHmmss)+".log"
}
PROCESS
{
    if (Test-Path $FireWallLog) 
    {
        Get-content $FireWallLog | out-file $targetLogFilePath
        write-host "successfully export firewall logs to file:" 
        write-host $targetLogFilePath    
    }
    else 
    {
        Write-host "Firewall log file does not exists"
    }
}
