variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
  default     = "staging-aks-cluster"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "staging-resource-group"
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  type        = number
  default     = 2
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use."
  type        = string
  default     = "1.21.2"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  type        = string
  default     = "staging-aks"
}

variable "vm_size" {
  description = "The size of the Virtual Machine instances in the AKS node pool."
  type        = string
  default     = "Standard_B2s"
}

variable "prefix" {
  description = "The prefix for resource names."
  type        = string
  default     = "staging"
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.2.0.0/16"]
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
  default     = ["10.2.1.0/24"]
}
