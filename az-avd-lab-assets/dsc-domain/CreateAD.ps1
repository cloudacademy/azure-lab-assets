Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
$theSecureString = ConvertTo-SecureString "1Cloud_Academy_Labs!" -AsPlainText -Force
Install-ADDSForest -DomainName "cloudacademylabs.com" -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode "7" -DomainNetbiosName "calabs" -ForestMode "7" -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$True -SysvolPath "C:\Windows\SYSVOL" -Force:$true -SafeModeAdministratorPassword $theSecureString
New-ADOrganizationalUnit -Name "SessionHosts" -Path "DC=cloudacademylabs,DC=com"
Restart-Computer -Force