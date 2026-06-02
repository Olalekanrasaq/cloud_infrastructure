terraform {
  backend "s3" {
    bucket = "solo-developer-tf-statefile"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
