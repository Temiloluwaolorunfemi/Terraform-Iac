variable "subscription_id" {
	description = "The Azure subscription ID to use for this deployment."
	type        = string
}

variable "location" {
    description = "The Azure region where resources will be deployed."
    type        = string
    default     = "East US"
}

variable "vm_size" {
	description = "The size of the Linux virtual machine."
	type        = string
	default     = "Standard_D2als_v7"
}

variable "vnet_address_space" {
    description = "The address space for the virtual network."
    type        = string
    default     = "10.0.0.0/16"
}

variable "subnet_address_space" {
    description = "The address space for the subnet."
    type        = string
    default     = "10.0.1.0/24"
}

variable "admin_username" {
	description = "The administrator username for the Linux virtual machine."
	type        = string
	default     = "azureuser"
}

variable "image_publisher" {
	description = "Publisher of the Linux VM image."
	type        = string
	default     = "Canonical"
}

variable "image_offer" {
	description = "Offer of the Linux VM image."
	type        = string
	default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
	description = "SKU of the Linux VM image."
	type        = string
	default     = "22_04-lts"
}

variable "tenant_id" {
    description = "The Azure Active Directory tenant ID."
    type        = string
}

variable "object_id" {
    description = "The object ID of the Azure AD user or service principal."
    type        = string
}