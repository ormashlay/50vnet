
Connect-AzAccount


for ($i = 1; $i -le 50; $i++) {
    $vnetName = "VNt$i"
    $resourceGroupName = "tel-aviv"
    $location = "East US"
    $addressPrefix = "10.$i.0.0/16" # Address space for the virtual network
    $subnetName = "Subnet$i"
    $subnetPrefix = "10.$i.0.0/24" # Address space for the subnet

    
    New-AzResourceGroup -Name $resourceGroupName -Location $SouthCentralUS

    
    New-AzVirtualNetwork -Name $vnetName -ResourceGroupName $tel-aviv -Location $SouthCentralUS -AddressPrefix $addressPrefix

    
    $vnet = Get-AzVirtualNetwork -Name $vnetName -$tel-aviv

    
    Add-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetPrefix -VirtualNetwork $vnet | Set-AzVirtualNetwork

    
    $subnet = Get-AzVirtualNetworkSubnetConfig -Name $subnetName -VirtualNetwork $vnet

    
    Write-Output "Virtual network $vnetName and subnet $subnetName created."
}

