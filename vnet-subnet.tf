resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.RG65.name
  address_space       = ["10.0.0.0/16"]
  tags = var.tags
}

resource "azurerm_subnet" "myterraformsubnet" {
    name = var.subnetname
    resource_group_name = azurerm_resource_group.RG65.name
    virtual_network_name = azurerm_virtual_network.myterraformnetwork.name
    address_prefix = ["10.0.1.0/24"]
    
}
  
    
 