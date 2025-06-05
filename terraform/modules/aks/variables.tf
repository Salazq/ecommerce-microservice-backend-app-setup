variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the AKS cluster will be created."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 1
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use."
  type        = string
  default     = "1.21.2"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
}

variable "vm_size" {
  description = "The size of the Virtual Machine instances in the AKS node pool."
  type        = string
  default     = "Standard_B2s"
}