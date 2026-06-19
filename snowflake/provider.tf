terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "snowflake" {
  organization_name = local.snowflake_creds.organization_name
  account_name       = local.snowflake_creds.account_name
  user               = local.snowflake_creds.user
  private_key        = local.snowflake_creds.private_key
  role               = local.snowflake_creds.role
  authenticator      = local.snowflake_creds.authenticator
}