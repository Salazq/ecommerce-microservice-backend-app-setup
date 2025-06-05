variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  default     = "dev-aks-cluster"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  default     = "dev-resource-group"
}

variable "location" {
  description = "The Azure region where resources will be created."
  default     = "East US"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  default     = 3
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use."
  default     = "1.21.2"
}