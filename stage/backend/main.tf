variable "rg_name" {
    type = string
    default = "test"
}

variable "rg_location" {
    type = string
    default = "brazilsouth"
}

variable "sp_id" {
    type = string
    default = "id"
}

resource "azurerm_app_service" "app-service-back" {
    name                = "app-beergarage-terragrunt-backend-template-brazilsouth"
    location            = var.rg_location
    resource_group_name = var.rg_name
    app_service_plan_id = var.sp_id

    site_config {
      http2_enabled    = false
      use_32_bit_worker_process = true
    }
}