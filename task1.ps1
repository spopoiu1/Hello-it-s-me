Param (
$VMName,
$CPUnr = 2,
$RAM = 2GB,
$SwitchName 
)
$RAM_host = [math]::Round((Get-WmiObject -Class Win32_ComputerSystem  -computer $env:computername).TotalPhysicalMemory/1GB)
$RAM_host_GB = "$RAM_host"+"GB"
if (get-vm | where {$_.name -match $VMName}) {
   Write-Host "This VM exists"
  }
elseif ($RAM -gt $RAM_host_GB) {
   Write-Host "The RAM for the VM is too big. Give a number under $RAM_host"
  }
else {
New-VHD -Path C:\Users\Sanda\Downloads\taskVHDX.vhdx -SizeBytes 64GB
New-VM -name $VMName -MemoryStartupBytes $RAM -BootDevice CD -VHDPath C:\Users\Sanda\Downloads\taskVHDX.vhdx -Generation 1 -Switch $SwitchName
Set-VMProcessor $VMName -Count $CPUnr
Enable-VMIntegrationService -VMName $VMName -Name "Guest Service Interface"
$VM_info = Get-VM $VMName
Write-Host "VM information : " $VM_info
}
#calling the script: .\task1.ps1 -VMName SandaVM -CPUnr 8 -RAM 4GB -SwitchName External