output "resource_group" {
  value = azurerm_resource_group.main
}
output "storage_account" {
  value = azurerm_resource_group.main.name
}
output "location" {
  value = azurerm_storage_account.main.location
}