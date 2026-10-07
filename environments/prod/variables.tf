variable "rgs" {
  description = "A map of resource groups to create"
  type = map(object({
    name     = string
    location = string
  }))
}


variable "vnets" {
  type = map(object({
      name                = string
  resource_group_name = string
  address_space       = list(string)
  location            = string
  }))
}


variable "subnets" {
  description = "A map of subnets to create"
  type        = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
    location            = string
  }))
}