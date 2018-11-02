# VMWare-Powershell

This is a simple powershell script used for basic VMWare functions.  All actions are enabled by removing comments on the items you would like to run.  Include the server name in vSphere in the vmlist.txt file, one per line, to use multiple machines.  I recommend testing the script by uncommenting the Get-VM line so no changes will be made, you are only pulling information.

##### If you are new to PowerCLI, you can install the VMWare Module by running the Install Module Command:
```
PS C:\Scripts> Install-Module -Name VMware.PowerCLI
```
##### In order to run custom scripts in powershell you need to set the execution policy to remote signed:
```
PS C:\Scripts> Set-ExecutionPolicy remotesigned
```

##### To address self-signed certificate errors when connecting to a vSphere server, update your PowerCLIConfiguration to ignore invalid certs
```
PS C:\Scripts> Set-PowerCLIConfiguration -InvalidCertificate Ignore
```

##### Discalimer:

###### All scripts are provided AS IS without warranty of any kind. The entire risk arising out of the use or performance of the sample scripts and documentation remains with you. In no event shall the github user CountPickering, its authors, or anyone else involved in the creation, production, or delivery of the scripts be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the sample scripts or documentation, even if the github user CountPickering has been advised of the possibility of such damages.
