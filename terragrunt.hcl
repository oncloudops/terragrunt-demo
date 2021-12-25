# provider
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
EOF
}

# backend
remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    endpoint                    = "https://minio.home.lan"
    bucket                      = "terraform"
    region                      = "sha"
    key                         = "terragrunt-demo/${path_relative_to_include()}/terraform.tfstate"
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_credentials_validation = true
    force_path_style            = true
  }
}
