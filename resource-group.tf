resource "azurerm_resource_group" "RG65" {
  name     = var.resourceGroupName
  location = var.location
  tags = var.tags
}