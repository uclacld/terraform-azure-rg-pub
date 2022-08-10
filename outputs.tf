output "name" {
  value = azurerm_resource_group.rg.name 
}

output "location" {
  value = azurerm_resource_group.rg.location 
}

output "lock_level_name" {
  
  value = var.lock_level == "" ? var.lock_level : azurerm_management_lock.rg[0].name
 
}

output "lock_level_scope" {
  
  value = var.lock_level == "" ? var.lock_level : azurerm_management_lock.rg[0].scope
 
}

output "lock_level_notes" {
  
  value = var.lock_level == "" ? var.lock_level : azurerm_management_lock.rg[0].notes
 
}

output "resource_group" {   
  value = ["${azurerm_resource_group.rg}"]
}

output "lock_level" {   
  value = ["${azurerm_management_lock.rg}"]
}



