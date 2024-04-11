
Connect-AzAccount

$storageAccountName = "telavivstorage"
$resourceGroupName = "tel-aviv"


$ctx = New-AzStorageContext -StorageAccountName $storageAccountName -ResourceGroupName $resourceGroupName


$containerNames = @("container1", "container2", "container3")

foreach ($tel1container in $tel2container ) {
    New-AzStorageContainer -Name $containerName -Context $ctx
}

