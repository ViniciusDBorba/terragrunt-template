output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "rg_location" {
  value = azurerm_resource_group.rg.location
}

output "sp_id" {
  value = azurerm_app_service_plan.service-plan.id
}