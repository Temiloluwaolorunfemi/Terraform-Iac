variable "tenant_id" {
    description = "The Azure Active Directory tenant ID."
    type        = string
    default     = "fa22cac8-f0ea-485d-8b6a-1d156cb9ef26"
}

variable "object_id" {
    description = "The object ID of the Azure AD user or service principal."
    type        = string
    default     = "ef941a6e-ae1b-48ee-ad6b-5c100b1aaabe"
}

variable "subscription_id" {
    description = "The Azure subscription ID."
    type        = string
    default     = "3237c5ba-b3d0-4568-808f-0c767907a87d"
}