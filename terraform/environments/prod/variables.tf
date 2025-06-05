variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "prod-aks-cluster"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "prod-resource-group"
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "eastus"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 3
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use."
  type        = string
  default     = "1.29.7"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
  default     = "prod-aks"
}

variable "vm_size" {
  description = "The size of the Virtual Machine instances in the AKS node pool."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "prefix" {
  description = "The prefix for resource names."
  type        = string
  default     = "prod"
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.1.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
  default     = ["10.1.1.0/24"]
}
