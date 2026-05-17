terraform {
  backend "s3" {
    bucket       = "terraform-k8s-platform-state"
    key          = "prod/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}