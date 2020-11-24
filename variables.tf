variable "deployment_client_id" {
  type        = string
  description = "Application ID/Client ID  of the service principal. Used by AKS to manage AKS related resources on Azure like vms, subnets."
}
variable "deployment_subscription_id" {
  type        = string
  description = "ID of the subscription" 
}
variable "deployment_tenant_id" {
  type        = string
  description = "ID of the Azure tenant"
}
variable "deployment_client_secret" {
  type        = string
  description = "Secret of the service principal"
}

variable "common_rg" {
    type        = string
    description = "The resource group the vnet & other common services are depoyed to"
}

variable "location" {
    type        = string
    description = "location where reasources will all be deployed to"
}

variable "vnet_name" {
    type        = string
    description = "The Vnet name that we'll be using"    
}

variable "vnet_nsg" {
    type        = string
    description = "The name of the NSG associated with the main VNET"    
}

variable "vnet_cidr" {
    type        = string
    description = "The address space we'll be using"   
}

variable "vnet_subnet_name" {
    type        = string
    description = "subnet name"    
}

  variable "vnet_subnet_cidr" {
    type        = string
    description = "subnet CIDR"    
}

variable tags {
    type        = map
    description = "Collection of the tags referenced by the Azure deployment"
    default = {
        source      = "terraform"
        environment = "test"
        costCenter  = "Radhe"
   }
}