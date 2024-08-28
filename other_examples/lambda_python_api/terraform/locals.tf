locals {
  # Paths for loading the code related to the Lambda Functions
  module_path             = abspath(path.module)
  root_path               = abspath("${path.module}/..")
  src_root_path           = abspath("${path.module}/../src")
  lambda_layers_root_path = abspath("${path.module}/../lambda-layers")
}
