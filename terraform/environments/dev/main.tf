resource "azurerm_resource_group" "dev_rg" {
  name     = "dev-resource-group"
  location = "East US"
}

module "networking" {
  source              = "../../modules/networking"
  resource_group_name = azurerm_resource_group.dev_rg.name
  location           = azurerm_resource_group.dev_rg.location
}

module "aks" {
  source              = "../../modules/aks"
  resource_group_name = azurerm_resource_group.dev_rg.name
  location           = azurerm_resource_group.dev_rg.location
  cluster_name       = var.cluster_name
  node_count         = var.node_count
  kubernetes_version  = var.kubernetes_version
}