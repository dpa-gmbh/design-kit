/*
The backend configuration is loaded by Terraform extremely early, before
the core of Terraform can be initialized. This is necessary because the backend
dictates the behavior of that core. The core is what handles interpolation
processing. Because of this, interpolations cannot be used in backend
configuration.
*/
terraform {
  backend "s3" {
    bucket = "design-kit-terraform"
    key    = "terraform-state"
    region = "eu-central-1"
    dynamodb_table = "terraform-lock"
    profile = "notification"
  }
}
