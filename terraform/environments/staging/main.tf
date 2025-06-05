resource "azurerm_resource_group" "staging_rg" {
  name     = "staging-rg"
  location = var.resource_group_location
}

module "aks" {
  source                = "../../modules/aks"
  resource_group_name   = azurerm_resource_group.staging_rg.name
  cluster_name          = var.cluster_name
  node_count            = var.node_count
  kubernetes_version    = var.kubernetes_version
}

module "networking" {
  source                = "../../modules/networking"
  resource_group_name   = azurerm_resource_group.staging_rg.name
  vnet_name             = var.vnet_name
  subnet_name           = var.subnet_name
}