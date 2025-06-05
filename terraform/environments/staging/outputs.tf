# Outputs para el entorno de staging
output "resource_group_name" {
  description = "Nombre del grupo de recursos"
  value       = azurerm_resource_group.staging_rg.name
}

output "resource_group_location" {
  description = "Ubicación del grupo de recursos"
  value       = azurerm_resource_group.staging_rg.location
}

# Outputs del cluster AKS
output "aks_cluster_name" {
  description = "Nombre del cluster AKS"
  value       = module.aks.aks_cluster_name
}

output "aks_cluster_id" {
  description = "ID del cluster AKS"
  value       = module.aks.aks_cluster_id
}

output "aks_fqdn" {
  description = "FQDN del API server del cluster AKS"
  value       = module.aks.aks_fqdn
}

output "aks_public_ip" {
  description = "IP pública del API server del cluster AKS"
  value       = module.aks.aks_public_ip
}

output "aks_node_resource_group" {
  description = "Grupo de recursos de los nodos AKS"
  value       = module.aks.aks_node_resource_group
}

# Outputs de networking
output "vnet_id" {
  description = "ID de la red virtual"
  value       = module.networking.vnet_id
}

output "subnet_id" {
  description = "ID de la subred"
  value       = module.networking.subnet_id
}

# Comando para obtener credenciales
output "kubectl_config_command" {
  description = "Comando para configurar kubectl"
  value       = "az aks get-credentials --resource-group ${azurerm_resource_group.staging_rg.name} --name ${module.aks.aks_cluster_name}"
}
