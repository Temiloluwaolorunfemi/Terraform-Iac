variable "subscription_id" {
    description = "The Azure subscription ID."
    type        = string
  
}

variable "location" {
    description = "The Azure region where resources will be deployed."
    type        = string
    default     = "Canada Central"
}

variable "principal_id" {
    description = "The object ID of the Azure AD user or service principal."
    type        = string
}

