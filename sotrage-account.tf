resource "random_id"  "randomid" {
  keepers = {
    resource_group = azurerm_resource_group.RG65.name
  }
  byte_length = 8
}

resource "azurerm_storage_account" "mystorageaccount" {
  name                     = "diag${random_id.randomid.hex}"
  resource_group_name      = azurerm_resource_group.RG65.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}