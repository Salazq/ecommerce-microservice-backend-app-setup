output "aks_cluster_name" {
  description = "Nombre del cluster AKS"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_cluster_id" {
  description = "ID del cluster AKS"
  value       = azurerm_kubernetes_cluster.aks.id
}

output "aks_fqdn" {
  description = "FQDN del API server del cluster AKS"
  value       = azurerm_kubernetes_cluster.aks.fqdn
}

output "aks_public_ip" {
  description = "IP pública del API server del cluster AKS"
  value       = azurerm_kubernetes_cluster.aks.kube_config.0.host
  sensitive   = true
}

output "aks_kube_config" {
  description = "Configuración de kubectl para el cluster AKS"
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config
  sensitive   = true
}

output "aks_node_resource_group" {
  description = "Grupo de recursos de los nodos del cluster AKS"
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}