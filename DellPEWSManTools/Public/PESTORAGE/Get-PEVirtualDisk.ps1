<#
.SYNOPSIS
Short description

.DESCRIPTION
Long description

.PARAMETER iDRACSession
Parameter description

.EXAMPLE
An example

.NOTES
General notes
#>
Function Get-PEVirtualDisk 
{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [Alias("s")]
        [ValidateNotNullOrEmpty()]
        $iDRACSession
    )
    
    Process
    {
        Get-CimInstance -CimSession $iDRACSession -ClassName DCIM_VirtualDiskView -Namespace 'root/dcim'
    }
}