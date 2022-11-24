# The following variable are used to simplify the process of customizing 
# important settings and provide the foundation for what needs to be true when 
# deploying multiple instances of the module into a single Tenant.

# With the exception of subscription_id_management and 
# subscription_id_connectivity, these are all given values via the included 
# .tfvars files.

variable "subscription_id_management" {
  type        = string
  default     = ""
  description = "Sets the Subscription ID to use for Management resources."
}

variable "subscription_id_connectivity" {
  type        = string
  default     = ""
  description = "Sets the Subscription ID to use for Connectivity resources."
}

variable "default_location" {
  type        = string
  default     = "westeurope"
  description = "Sets the default location for resources, including references to location within Policy templates."
}

variable "deploy_corp_landing_zones" {
  type        = bool
  default     = true
  description = "If set to true, will deploy the \"Corp\" landing zones in addition to any core and custom landing zones."
}

variable "deploy_online_landing_zones" {
  type        = bool
  default     = true
  description = "If set to true, will deploy the \"Online\" landing zones in addition to any core and custom landing zones."
}

variable "deploy_sap_landing_zones" {
  type        = bool
  default     = false
  description = "If set to true, will deploy the \"SAP\" landing zones in addition to any core and custom landing zones."
}

variable "deploy_connectivity_resources" {
  type    = bool
  default = true
}

variable "deploy_management_resources" {
  type        = bool
  default     = true
  description = "If set to true, will deploy the management resources in the Subscription assigned as the Management landing zone."
}

variable "security_contact_email_address" {
  type        = string
  default     = "security.contact@replace_me"
  description = "Sets the security contact email address used when configuring Azure Security Center."
}

# Use variables to customize the deployment

variable "root_id" {
  type    = string
  default = "myorg"
}

variable "root_name" {
  type    = string
  default = "My Organization"
}

variable "connectivity_resources_location" {
  type    = string
  default = "westeurope"
}

variable "connectivity_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_connectivity_resources_custom"
  }
}