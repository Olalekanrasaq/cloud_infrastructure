data "aws_secretsmanager_secret_version" "snowflake_creds" {
  secret_id = "/atlantis/snowflake-credentials"
}

locals {
  snowflake_creds = jsondecode(data.aws_secretsmanager_secret_version.snowflake_creds.secret_string)
}