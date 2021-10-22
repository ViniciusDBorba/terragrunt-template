include {
  path = find_in_parent_folders()
}

dependency "shared" {
  config_path = "../shared"
  mock_outputs = {
    rg_name = "mock"
    rg_location = "brazilsouth"
    sp_id = 0
  }
}

inputs = {
  rg_name = dependency.shared.outputs.rg_name
  rg_location = dependency.shared.outputs.rg_location
  sp_id = dependency.shared.outputs.sp_id
}
