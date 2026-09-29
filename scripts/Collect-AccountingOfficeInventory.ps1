[CmdletBinding()]
param(
    [string]$OutputPath = ".\accounting-office-inventory-$(Get-Date -Format 'yyyyMMdd-HHmmss').json"
)

$ErrorActionPreference = "Stop"

function Get-SafeCimInstance {
    param(
        [Parameter(Mandatory)]
        [string]$ClassName
    )

    try {
        Get-CimInstance -ClassName $ClassName
    }
    catch {
        [pscustomobject]@{
            Error = $_.Exception.Message
        }
    }
}

$computerSystem = Get-SafeCimInstance -ClassName Win32_ComputerSystem
$operatingSystem = Get-SafeCimInstance -ClassName Win32_OperatingSystem
$bios = Get-SafeCimInstance -ClassName Win32_BIOS
$volumes = Get-SafeCimInstance -ClassName Win32_LogicalDisk

$bitLocker = if (Get-Command Get-BitLockerVolume -ErrorAction SilentlyContinue) {
    try {
        Get-BitLockerVolume | Select-Object MountPoint, VolumeStatus, ProtectionStatus, EncryptionMethod
    }
    catch {
        [pscustomobject]@{ Error = $_.Exception.Message }
    }
}
else {
    [pscustomobject]@{ Error = "Get-BitLockerVolume is unavailable." }
}

$defender = if (Get-Command Get-MpComputerStatus -ErrorAction SilentlyContinue) {
    try {
        Get-MpComputerStatus | Select-Object AMServiceEnabled, AntivirusEnabled, RealTimeProtectionEnabled, AntivirusSignatureLastUpdated
    }
    catch {
        [pscustomobject]@{ Error = $_.Exception.Message }
    }
}
else {
    [pscustomobject]@{ Error = "Get-MpComputerStatus is unavailable." }
}

$report = [ordered]@{
    CollectionTime = (Get-Date).ToString("o")
    ComputerName   = $env:COMPUTERNAME
    UserDomain     = $env:USERDOMAIN
    ComputerSystem = $computerSystem | Select-Object Manufacturer, Model, Domain, PartOfDomain, TotalPhysicalMemory
    OperatingSystem = $operatingSystem | Select-Object Caption, Version, BuildNumber, LastBootUpTime
    BIOS           = $bios | Select-Object Manufacturer, SMBIOSBIOSVersion, SerialNumber
    Volumes        = $volumes | Select-Object DeviceID, DriveType, FileSystem, Size, FreeSpace
    BitLocker      = $bitLocker
    Defender       = $defender
    HotFixes       = Get-HotFix | Sort-Object InstalledOn -Descending | Select-Object -First 20 HotFixID, InstalledOn
    Services       = Get-Service | Where-Object Status -eq "Running" | Select-Object Name, DisplayName, StartType
    Network        = Get-NetIPConfiguration | Select-Object InterfaceAlias, IPv4Address, IPv6Address, IPv4DefaultGateway, DNSServer
}

$report | ConvertTo-Json -Depth 6 | Set-Content -Path $OutputPath -Encoding UTF8
Write-Host "Read-only inventory saved to $OutputPath"
Write-Warning "Review and redact device, domain, network, and operational metadata before sharing."
