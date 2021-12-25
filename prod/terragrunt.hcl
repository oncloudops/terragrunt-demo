include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "github.com/Firxiao/helm-aliyun-ddns.git//.?ref=v0.0.1"
}

inputs = {
  helm_release_name = "aliyun-ddns-prod"
}
