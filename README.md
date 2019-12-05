# 365-Email-Creation
Powershell Script to create various emails at once.

Attached CSV file the script pulls from as well

UPN(UserPrincipalName) = Email address
Display Name = Full Name of the user
License = Use get-msolaccountsku while connected to your 365 server in powershell to get license type.

Required Powershell Module: MSOnline

*Note*
Script does throw two errors currently, but does still get the job done. Errors are:

"New-Msoluser : Invalid syntax.  Parameter Name: USERPRINCIPALNAME." 
and 
"Set-MsolUserLicense : Unable to assign this license because it is invalid. Use the Get-MsolAccountSku cmdlet to retrieve a list of valid licenses.
At line:19 char:1
