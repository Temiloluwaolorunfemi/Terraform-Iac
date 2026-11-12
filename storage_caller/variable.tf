variable "subscription_id" {
  description = "The Azure subscription ID used by the provider and storage module."
  type        = string
  default     = "3237c5ba-b3d0-4568-808f-0c767907a87d"
}

variable "principal_id" {
  description = "The principal ID of the service principal used for authentication."
  type        = string
  default     = "ef941a6e-ae1b-48ee-ad6b-5c100b1aaabe"
}