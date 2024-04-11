
Connect-AzAccount


$resourceGroupName = "tel-aviv"
$location = "South Central US"


$vmNamePrefix = "VM"
$adminUsername = "tel1L"
$adminPassword = "Qwerty7654321!"
$vmSize = "Standard_DS1_v2"
$imagePublisher = "MicrosoftWindowsServer"
$imageOffer = "WindowsServer"
$imageSKU = "2019-Datacenter"
$osDiskType = "Standard_LRS"
$subnetName = "sub1"
$virtualNetworkName = "vnt1"
$publicIpAddressName = "YourPublicIpAddress"
$nicNamePrefix = "NIC"
$networkSecurityGroupName = "NetworkSecurityGrouptelaviv1"


$numVMs = 50


for ($i = 1; $i -le $numVMs; $i++) {
    $vmName = $vmNamePrefix + $i

    
    $publicIpAddress = New-AzPublicIpAddress -Name $publicIpAddressName -ResourceGroupName $tel-aviv -Location $South Central US -AllocationMethod Dynamic

    telaviv1
    $nic = New-AzNetworkInterface -Name ($nicNamePrefix + $i) -ResourceGroupName $tel-aviv -Location $location -SubnetId "/subscriptions/your_subscription_id/resourceGroups/$tel-aviv/providers/Microsoft.Network/virtualNetworks/$virtualNetworkNametelaviv1/subnets/$subnetName" -PublicIpAddressId $publicIpAddress.Id -NetworkSecurityGroupId "/subscriptions/your_subscription_id/resourceGroups/$tel-aviv/providers/Microsoft.Network/networkSecurityGroups/$networkSecurityGroup"

    
    $vmConfig = New-AzVMConfig -VMName $vmName -VMSize $vmSize
    $vmConfig = Set-AzVMOperatingSystem -VM $vmConfig -Windows -ComputerName $vmName -Credential (New-Object System.Management.Automation.PSCredential ($tel1L, (ConvertTo-SecureString $ -AsPlainText -Force)))
    $vmConfig = Set-AzVMSourceImage -VM $vmConfig -PublisherName $imagePublisher -Offer $imageOffer -Skus $imageSKU -Version latest
    $vmConfig = Add-AzVMNetworkInterface -VM $vmConfig -Id $nic.Id

    
    New-AzVM -ResourceGroupName $tel-aviv -Location $South Central US -VM $vmConfig -Verbose
}
