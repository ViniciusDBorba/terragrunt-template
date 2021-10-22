variable "location" {
    type = string
    default = "brazilsouth"
}

resource "azurerm_resource_group" "rg" {
  name     = "ambev-beergarage-terragrunt-rg-beergarageonline-brewzone-template-${var.location}"
  location = var.location
}

resource "azurerm_app_service_plan" "service-plan" {
  name                = "asp-beergarage-terragrunt-template-brazilsouth"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
      tier = "Free"
      size = "F1"
  }
}
