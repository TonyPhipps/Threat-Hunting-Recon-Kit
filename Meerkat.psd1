#
# Module manifest for module 'Meerkat'
#
# Generated by: Anthony Phipps, Jeremy Arnold, Jack Smith
#
# Generated on: 12/27/2022
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'Meerkat.psm1'
    
    # Version number of this module.
    ModuleVersion = '1.0'
    
    # Supported PSEditions
    CompatiblePSEditions = 'Desktop', 'Core'
    
    # ID used to uniquely identify this module
    GUID = '24dade30-5d2f-4a53-a52a-725740d794e3'
    
    # Author of this module
    Author = 'Anthony Phipps, Jeremy Arnold, Jack Smith'
    
    # Company or vendor of this module
    CompanyName = 'See Authors'
    
    # Copyright statement for this module
    Copyright = 'This program is free software: you can redistribute it and/or modify
            it under the terms of the GNU General Public License as published by
            the Free Software Foundation, either version 3 of the License, or
            (at your option) any later version.
            
            This program is distributed in the hope that it will be useful,
            but WITHOUT ANY WARRANTY; without even the implied warranty of
            MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
            GNU General Public License for more details.
    
            You should have received a copy of the GNU General Public License
            along with this program.  If not, see <http://www.gnu.org/licenses/'
    
    # Description of the functionality provided by this module
    Description = 'Hunters Artifact, Metadata, and Events Recon'
    
    # Minimum version of the Windows PowerShell engine required by this module
    # PowerShellVersion = ''
    
    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''
    
    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''
    
    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = 'Get-ADS', 'Get-ARP', 'Get-AuditPolicy', 'Get-Autoruns', 'Get-BitLocker', 
                   'Get-Certificates', 'Get-ComputerDetails', 'Get-Connections', 
                   'Get-Defender', 'Get-Disks', 'Get-DLLs', 'Get-DNS', 'Get-DomainInfo', 
                   'Get-Drivers', 'Get-EnvVars', 'Get-EventLogs', 'Get-EventLogsMetadata', 
                   'Get-EventsLoginFailures', 'Get-EventsUserManagement', 'Get-Hardware', 
                   'Get-Hosts', 'Get-Hotfixes', 'Get-LocalGroups', 'Get-LocalUsers', 
                   'Get-MAC', 'Get-NetAdapters', 'Get-NetRoutes', 'Get-Processes', 
                   'Get-RecycleBin', 'Get-Registry', 'Get-RegistryMRU', 
                   'Get-RegistryPersistence', 'Get-ScheduledTasks', 'Get-Services', 
                   'Get-Sessions', 'Get-Shares', 'Get-Software', 'Get-Strings', 
                   'Get-TPMDetails', 'Get-USBHistory', 'Get-WindowsFirewall', 
                   'Invoke-Meerkat', 'Invoke-Meerkat_PSexec'
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = '*'
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = '*'
    
    # DSC resources to export from this module
    # DscResourcesToExport = @()
    
    # List of all modules packaged with this module
    # ModuleList = @()
    
    # List of all files packaged with this module
    FileList = 'Meerkat.psd1', 'Meerkat.psm1', 'Modules\Get-ADS.psm1', 
                   'Modules\Get-ARP.psm1', 'Modules\Get-AuditPolicy.psm1', 
                   'Modules\Get-Autoruns.psm1', 'Modules\Get-BitLocker.psm1', 
                   'Modules\Get-Certificates.psm1', 'Modules\Get-ComputerDetails.psm1', 
                   'Modules\Get-Connections.psm1', 'Modules\Get-Defender.psm1', 
                   'Modules\Get-Disks.psm1', 'Modules\Get-DLLs.psm1', 
                   'Modules\Get-DNS.psm1', 'Modules\Get-DomainInfo.psm1', 
                   'Modules\Get-Drivers.psm1', 'Modules\Get-EnvVars.psm1', 
                   'Modules\Get-EventLogs.psm1', 'Modules\Get-EventLogsMetadata.psm1', 
                   'Modules\Get-EventsLoginFailures.psm1', 
                   'Modules\Get-EventsUserManagement.psm1', 
                   'Modules\Get-Hardware.psm1', 'Modules\Get-Hosts.psm1', 
                   'Modules\Get-Hotfixes.psm1', 'Modules\Get-LocalGroups.psm1', 
                   'Modules\Get-LocalUsers.psm1', 'Modules\Get-MAC.psm1', 
                   'Modules\Get-NetAdapters.psm1', 'Modules\Get-NetRoutes.psm1', 
                   'Modules\Get-Processes.psm1', 'Modules\Get-RecycleBin.psm1', 
                   'Modules\Get-Registry.psm1', 'Modules\Get-RegistryMRU.psm1', 
                   'Modules\Get-RegistryPersistence.psm1', 
                   'Modules\Get-ScheduledTasks.psm1', 'Modules\Get-Services.psm1', 
                   'Modules\Get-Sessions.psm1', 'Modules\Get-Shares.psm1', 
                   'Modules\Get-Software.psm1', 'Modules\Get-Strings.psm1', 
                   'Modules\Get-TPMDetails.psm1', 'Modules\Get-USBHistory.psm1', 
                   'Modules\Get-WindowsFirewall.psm1', 'Modules\Invoke-Meerkat.psm1', 
                   'Modules\Invoke-Meerkat_PSexec.psm1'
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            # Tags = @()
    
            # A URL to the license for this module.
            # LicenseUri = ''
    
            # A URL to the main website for this project.
            # ProjectUri = ''
    
            # A URL to an icon representing this module.
            # IconUri = ''
    
            # ReleaseNotes of this module
            # ReleaseNotes = ''
    
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    # HelpInfoURI = ''
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
    
    }
    
    