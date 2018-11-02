###################
## Set Variables ##
###################

## Use VM list
$vmlist = Get-Content -Path C:\Scripts\vmlist.txt

## Retrieve the VM name only
$vms = Get-VM -Name $vmlist

## vSphere server
$VIServer = Read-Host -Prompt 'Insert vSphere Server Name ex: example.vsphere.local'

###################
## Begin Actions ##
###################

## Connet to vSphere server
## Username example: DOMAIN\username
Connect-VIServer -Server $VIServer

## Pulls basic information for VMs
## Used to test connectivity and correct names
#Get-VM $vms

## Guest Shutdown VMs
#Shutdown-VMGuest -VM $vms -Confirm:$false

## Wait 20 seconds after shutdown before next action (recommended)
#Start-Sleep -s 20

## Remove Snapshot using Snapshot Name
#$vms | ForEach-Object {$_.Name} |
#    %{
#    Get-Snapshot -VM $_ -Name "Snapshot #1" | Remove-Snapshot -Confirm:$False
#}

## Wait 20 seconds after removing snapshot before next action (recommended)
#Start-Sleep -s 20

## Create Snapshot with Description
#$vms | ForEach-Object {$_.Name} |
#    %{
#    New-Snapshot -VM $_ -Name "Snapshot #1" -Description "Initial install"
#}

## Revert to specific Snapshot using Snapshot Name
#$vms | ForEach-Object {$_.Name} |
#    %{
#    Set-VM -VM $_ -Snapshot (Get-Snapshot -VM $_ -Name "Snapshot #1") -Confirm:$False
#}

## Wait 20 seconds (recommended)
#Start-Sleep -s 20

## Start VMs from list
#Start-VM -VM $vms


#######################################
###   First Time Users Instructions  ##
###  Run commands below at PS Prompt ##
#######################################

## To install PowerCLI for the first time
## Run the Install-Module command
#Install-Module -Name VMware.PowerCLI

## In order to run custom scripts:
## Set the execution policy to remotesigned
#Set-ExecutionPolicy remotesigned

## To address self-signed certifiates on a vSphere server:
## Update your PowerCLIConfiguration to ignore invalid certs
#Set-PowerCLIConfiguration -InvalidCertificate Ignore
