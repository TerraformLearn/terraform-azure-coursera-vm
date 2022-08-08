resource "random_id"  "random_id" {
  keepers = {
    resource_group = azurerm_resource_group.RG65.name
  }
  byte_length = 8
}

resource "azurerm_storage_account" "mystorageaccount" {
  name                     = "diag${random_id.random_Id.hex}"
  resource_group_name      = azurerm_resource_group.RG65.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}