include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../modules//helm-aliyun-ddns"
}

inputs = {
  helm_release_name = "aliyun-ddns-dev"
}