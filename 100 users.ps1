
Install-Module -Name AzureAD


Connect-AzureAD


for ($i = 1; $i -le 100; $i++) {
    $displayName = "User$i"
    $userPrincipalName = "user$i@ordomain.onmicrosoft.com" 
    $passwordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
    $passwordProfile.Password = "Qwerty654321!"  

    $newUser = New-AzureADUser -DisplayName $displayName -AccountEnabled $true -UserPrincipalName $userPrincipalName -PasswordProfile $passwordProfile
    
    Write-Output "User $displayName created."
}
