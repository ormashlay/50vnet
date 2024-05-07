
Connect-AzAccount


$storageAccountName = "telcontainer"
$resourceGroupName = "tel-aviv"


$ctx = New-AzStorageContext -StorageAccountName $storageAccountName -ResourceGroupName $resourceGroupName


$containerName = "telcontainer"


$blobs = Get-AzStorageBlob -Container $containerName -telcontainer $ctx


foreach ($blob in $blobs) {
    New-AzStorageBlobSnapshot -Container $containerName -Blob $blob.Name -Context $ctx
}
