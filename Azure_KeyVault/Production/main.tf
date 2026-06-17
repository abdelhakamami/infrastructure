data "terraform_remote_state" "resource_group_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = "storing-state-storageaccount"
    storage_account_name = "" # to be defined for prod environement
    container_name       = "" # to be defined for prod environement
    key                  = "" # to be defined for prod environement
  }
}
resource "azurerm_key_vault" "key_vault" {
  name                        = var.azurerm_key_vault_name
  location                    = var.location
  resource_group_name         = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  enabled_for_disk_encryption = var.azurerm_key_vault_enabled_for_disk_encryption
  tenant_id                   = var.AZURE_TENANT_ID

  sku_name = var.azurerm_key_vault_sku
  access_policy {
    tenant_id = var.AZURE_TENANT_ID
    object_id = var.AZURE_OBJECT_ID
    
    key_permissions = [
      "Create",
      "Get",
      "List"
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover"
    ]
  }

  network_acls {
    default_action = var.azurerm_key_vault_network_acls_default_action
    bypass         = var.azurerm_key_vault_network_acls_bypass
  }

}

resource "azurerm_key_vault_secret" "secret" {
  name         = var.azurerm_key_vault_secret_name
  value        = var.azurerm_key_vault_secret_value
  key_vault_id = azurerm_key_vault.key_vault.id
}
#