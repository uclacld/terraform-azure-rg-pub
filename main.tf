resource "azurerm_resource_group" "rg" {
  
  name     = var.resource_group_name
  location = var.location

  tags = local.all_tags
  
}

resource "azurerm_management_lock" "rg" { 

  count = var.lock_level == "" ? 0 : 1

  name       = "${azurerm_resource_group.rg.name}-level-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.lock_level
  notes      = "Resource Group '${azurerm_resource_group.rg.name}' is locked with '${var.lock_level}' level."

}