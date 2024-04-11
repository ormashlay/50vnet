
$resourceGroupNames = @(
    "tel-aviv",
    "new-york",
    "jerusalem"
    
)


foreach ($groupName in $resourceGroupNames) {
    Remove-AzResourceGroup -Name $groupName -Force
}
