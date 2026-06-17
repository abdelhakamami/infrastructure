data "terraform_remote_state" "resource_group_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = "storing-state-storageaccount"
    storage_account_name = "devstoringavaxia"
    container_name       = "tfstate-resource-group-dev"
    key                  = "terraform.tfstate"
  }
}
data "terraform_remote_state" "load_balancer_state" {
  backend = "azurerm"
  config = {
    resource_group_name  = "storing-state-storageaccount"
    storage_account_name = "devstoringavaxia"
    container_name       = "tfstate-lb-dev"
    key                  = "new-tfstate-lb-dev"

  }
}
resource "azurerm_dns_zone" "zone" {
  name                = var.dns_zone_name
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
}

resource "azurerm_dns_a_record" "record" {
  name                = var.dns_a_record_name
  resource_group_name = data.terraform_remote_state.resource_group_state.outputs.resource_group_name
  zone_name           = azurerm_dns_zone.zone.name
  ttl                 = var.ttl
  records             = [data.terraform_remote_state.load_balancer_state.outputs.load_balancer_public_ip]
}
//