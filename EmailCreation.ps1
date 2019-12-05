Import-Module MSOnline
Connect-MsolService
$csvpath = "C:\Powershell\Atrium\Email.csv"

#Variables
$365Users = import-csv $csvpath -header("UPN","DisplayName","FirstName","LastName","password","License","Department","Title")
foreach ($365User in $365Users) {
#End Variables

New-Msoluser `
    -UserPrincipalName $365User.UPN `
    -DisplayName $365User.DisplayName `
    -firstname $365User.FirstName `
    -lastname $365User.LastName `
    -Department $365User.Department `
    -Title $365User.Title `
    -password $365User.password `
    -usagelocation "us"
   
Set-MsolUserLicense `
    -UserPrincipalName $365User.UPN `
    -AddLicenses $365User.License 

}