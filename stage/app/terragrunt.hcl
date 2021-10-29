include {
  path = find_in_parent_folders()
}

dependency "base" {
  config_path = "../base"
  mock_outputs = {
    rg_name = "mock"
    rg_location = "brazilsouth"
    sp_id = 0
  }
}

inputs = {
  rg_name = dependency.base.outputs.rg_name
  rg_location = dependency.base.outputs.rg_location
  sp_id = dependency.base.outputs.sp_id
}
