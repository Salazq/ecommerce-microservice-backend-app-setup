variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "subnet_prefix" {
  description = "The address prefix for the subnet."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the networking resources will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where networking resources will be created."
  type        = string
}

variable "prefix" {
  description = "The prefix for resource names."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}