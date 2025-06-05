variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "dev-aks-cluster"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "dev-resource-group"
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "eastus"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 1
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use."
  type        = string
  default     = "1.29.9"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
  default     = "dev-aks"
}

variable "vm_size" {
  description = "The size of the Virtual Machine instances in the AKS node pool."
  type        = string
  default     = "Standard_B2s"
}

variable "prefix" {
  description = "The prefix for resource names."
  type        = string
  default     = "dev"
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
