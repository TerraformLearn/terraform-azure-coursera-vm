resource "azurerm_public_ip" "mypublicip" {
  name                = var.ipaddressname
  resource_group_name = azurerm_resource_group.RG65.name
  location            = var.location
  allocation_method   = "Dynamic"
  tags = var.tags
}