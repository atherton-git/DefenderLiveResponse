<#
##################################################################################################################
# Microsoft MDATP CxE
# Jeff Cook and Yong Rhee
# Get-ExternalIPAddress.ps1
# v1.0 200610 Initial creation - Gets the external ip address
##################################################################################################################
#>

<#
.SYNOPSIS
    Executes nslookup myip.opendns.com. resolver1.opendns.com within an MDATP Live response session
.DESCRIPTION
    Executes nslookup myip.opendns.com. resolver1.opendns.com witin an MDATP Live response session
.INPUTS
    Not applicable
.EXAMPLE
    Within an MDATP Live Response session run the following commands to download the content to the machine
    putfile GetExternalIPaddress.ps1
    run the following command witin the live response session to execute the sript
    run Get-ExternalIPaddress.ps1
#>

Function GetExternalIPAddress
{
    $tmp =Invoke-WebRequest -URI http://myip.dnsomatic.com/ -UseBasicParsing
    $tmp.Content
}

## Run it
GetExternalIPAddress
