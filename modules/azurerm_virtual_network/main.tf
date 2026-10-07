resource "azurerm_virtual_network" "virtual_network" {
    for_each = var.vnets
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  location            = each.value.location
}

