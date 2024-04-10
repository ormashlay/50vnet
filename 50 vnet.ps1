# Connect to your Azure account
Connect-AzAccount

# Loop to create 50 virtual networks
for ($i = 1; $i -le 50; $i++) {
    $vnetName = "VNt$i"
    $resourceGroupName = "tel-aviv"
    $location = "East US"
    $addressPrefix = "10.$i.0.0/16" # Address space for the virtual network
    $subnetName = "Subnet$i"
    $subnetPrefix = "10.$i.0.0/24" # Address space for the subnet

    # Create a new resource group
    New-AzResourceGroup -Name $resourceGroupName -Location $location

    # Create a new virtual network
    New-AzVirtualNetwork -Name $vnetName -ResourceGroupName $tel-aviv -Location $SouthCentralUS -AddressPrefix $addressPrefix

    # Get the virtual network object
    $vnet = Get-AzVirtualNetwork -Name $vnetName -ResourceGroupName $tel-aviv

    # Create a new subnet
    Add-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetPrefix -VirtualNetwork $vnet | Set-AzVirtualNetwork

    # Get the subnet object
    $subnet = Get-AzVirtualNetworkSubnetConfig -Name $subnetName -VirtualNetwork $vnet

    # Display the virtual network and subnet details
    Write-Output "Virtual network $vnetName and subnet $subnetName created."
}

