
resource "random_string" "test" {
  length  = 5
  special = false
  upper   = false
}
resource "azurerm_storage_account" "main" {
  name                     = "terraform${random_string.test.result}"
  resource_group_name      = local.name
  location                 = local.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}