variable "location" {
    type = string
    default = "brazilsouth"
}

resource "azurerm_resource_group" "rg" {
  name     = "ambev-beergarage-terragrunt-rg-beergarageonline-brewzone-template-${var.location}"
  location = var.location
}