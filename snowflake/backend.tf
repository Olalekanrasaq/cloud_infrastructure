terraform {
  backend "s3" {
    bucket = "solo-developer-tf-statefile"
    key    = "dev_snowflake/terraform.tfstate"
    region = "us-east-1"
  }
}