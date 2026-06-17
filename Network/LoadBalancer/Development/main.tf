data "terraform_remote_state" "resource_group_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = "storing-state-storageaccount"
    storage_account_name = "devstoringavaxia"
    container_name       = "tfstate-resource-group-dev"
    key                  = "terraform.tfstate"
  }
}
resource "azurerm_public_ip" "lb" {
  name                = var.azurerm_public_ip_name
  location            = var.location
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  allocation_method   = var.azurerm_public_ip_allocation_method
}

resource "azurerm_lb" "lb" {
  name                = var.azurerm_lb_name
  location            = var.location
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
 
  frontend_ip_configuration {
    name                 = var.azurerm_lb_frontend_ip_configuration_name
    public_ip_address_id = "${azurerm_public_ip.lb.id}"
  }
}
