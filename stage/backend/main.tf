resource "azurerm_app_service_plan" "service-plan" {
  name                = "asp-beergarage-terragrunt-template-backend-brazilsouth"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}