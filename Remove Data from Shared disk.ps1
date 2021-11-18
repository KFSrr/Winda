takeown /f "c:\folder\subfolder" /r
$mypath = "D:\Install\VPN\Configs"
$myacl = Get-Acl $mypath
$myaclentry = "f.username","FullControl","Allow"
$myaccessrule = New-Object System.Security.AccessControl.FileSystemAccessRule($myaclentry)
$myacl.SetAccessRule($myaccessrule)
Get-ChildItem -Path "$mypath" -Recurse -Force | Set-Acl -AclObject $myacl -Verbose