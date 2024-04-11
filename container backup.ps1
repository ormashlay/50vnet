# Login to Azure
Connect-AzAccount

# Specify your Azure Storage account name and resource group name
$storageAccountName = "telcontainer"
$resourceGroupName = "tel-aviv"

# Set the context to the desired storage account
$ctx = New-AzStorageContext -StorageAccountName $storageAccountName -ResourceGroupName $resourceGroupName

# Specify the container to backup
$containerName = "telcontainer"


$blobs = Get-AzStorageBlob -Container $containerName -telcontainer $ctx

# Create a snapshot for each blob in the container
foreach ($blob in $blobs) {
    New-AzStorageBlobSnapshot -Container $containerName -Blob $blob.Name -Context $ctx
}
