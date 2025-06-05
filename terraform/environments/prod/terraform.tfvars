variable "resource_group_name" {
  description = "The name of the resource group for the production environment."
  default     = "prod-resource-group"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  default     = "prod-aks-cluster"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  default     = 1
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use."
  default     = "1.21.2"
}

variable "location" {
  description = "The Azure region where resources will be created."
  default     = "East US"
}