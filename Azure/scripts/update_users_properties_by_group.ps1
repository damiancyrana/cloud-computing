# massive update users properties by group in azure
#by Damian Cyrana


Import-Module AzureAD
Connect-AzureAD

$ADUserGroupID = "write Azure AD Group ID here"
$usersInADGroup = Get-AzureADGroupMember -ObjectID $ADUserGroupID

foreach($user in $usersInADGroup){
    Write-Host $user.DisplayName
    Set-AzureADUser -ObjectID $user.Mail -Department "write new value here"
}
