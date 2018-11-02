# VMWare-Powershell

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
