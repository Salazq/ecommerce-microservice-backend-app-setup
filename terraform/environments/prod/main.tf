resource "azurerm_resource_group" "prod_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "networking" {
  source                    = "../../modules/networking"
  resource_group_name       = azurerm_resource_group.prod_rg.name
  location                 = azurerm_resource_group.prod_rg.location
  prefix                   = var.prefix
  address_space            = var.address_space
  subnet_address_prefixes  = var.subnet_address_prefixes
}

module "aks" {
  source              = "../../modules/aks"
  resource_group_name = azurerm_resource_group.prod_rg.name
  location           = azurerm_resource_group.prod_rg.location
  aks_cluster_name   = var.aks_cluster_name
  node_count         = var.node_count
  kubernetes_version = var.kubernetes_version
  dns_prefix         = var.dns_prefix
  vm_size            = var.vm_size
}