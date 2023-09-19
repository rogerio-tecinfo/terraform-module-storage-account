# Access resource group exist
data "azurerm_resource_group" "resourcegroup" {
  name = var.resourcegroup
}

output "resourcegroup_id" {
  value = data.azurerm_resource_group.resourcegroup.id
}

# Access storage account
data "azurerm_storage_account" "storage_accountname" {
 name = var.storage_account   
  
}

output "azurerm_storage_account.id" {
 value = data.azurerm_storage_account.storage_account.id
}

# Create Storage Container
resource "azurerm_storage_container" "storage_container" {
  name                  = var.storage_container
  storage_account_name  = azurerm_storage_account.storage_accountname.name
  container_access_type = "blob"
  depends_on            = [azurerm_storage_account.storage_accountname]
}