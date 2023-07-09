<#
##################################################################################################################
# Microsoft MDATP CxE
#
# KillProcess.ps1
# v1.0 190314 Initial creation - Kill's a process by Process Identifier (PID)
##################################################################################################################
#>

<#
.SYNOPSIS
    Kill a process by PID
#> 
Param (
[parameter(Mandatory=$true)][Int]$ProcessID
)

Stop-Process -ID $ProcessID -Force
