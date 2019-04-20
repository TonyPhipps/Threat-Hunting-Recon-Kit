﻿function Get-THR_TCPConnections {
    <#
    .SYNOPSIS
        Gets the active TCP connections.

    .EXAMPLE 
        Get-THR_TCPConnections

    .EXAMPLE 
        $Targets = Get-ADComputer -filter * | Select -ExpandProperty Name
        ForEach ($Target in $Targets) {
            Invoke-Command -ComputerName $Target -ScriptBlock ${Function:Get-THR_TCPConnections} | 
            Select-Object -Property * -ExcludeProperty PSComputerName,RunspaceID | 
            Export-Csv -NoTypeInformation "c:\temp\$Target_TCPConnections.csv"
        }

    .NOTES
        Updated: 2019-04-05

        Contributing Authors:
            Jeremy Arnold
            Anthony Phipps
            
        LEGAL: Copyright (C) 2019
        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.
    
        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.
        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.

    .LINK
        https://github.com/TonyPhipps/THRecon
        https://github.com/TonyPhipps/THRecon/wiki/TCPConnections
    #>

    [CmdletBinding()]
    param(
    )

	begin{

        $DateScanned = Get-Date -Format u
        Write-Information -InformationAction Continue -MessageData ("Started Get-THR_TCPConnections at {0}" -f $DateScanned)

        $stopwatch = New-Object System.Diagnostics.Stopwatch
        $stopwatch.Start()
	}

    process{
            
        $ResultsArray = Get-NetTCPConnection
        
        foreach ($Result in $ResultsArray){

            $Result | Add-Member -MemberType NoteProperty -Name "Host" -Value $env:COMPUTERNAME
            $Result | Add-Member -MemberType NoteProperty -Name "DateScanned" -Value $DateScanned
            $Result | Add-Member -MemberType NoteProperty -Name Path -Value ((Get-Process -Id $Result.OwningProcess).Path)
        }

        return $ResultsArray | Select-Object Host, DateScanned, LocalAddress, LocalPort, 
        RemoteAddress, RemotePort, State, AppliedSetting, OwningProcess, Path
    }

    end{

        $elapsed = $stopwatch.Elapsed

        Write-Verbose ("Total time elapsed: {0}" -f $elapsed)
        Write-Verbose ("Ended at {0}" -f (Get-Date -Format u))
    }
}