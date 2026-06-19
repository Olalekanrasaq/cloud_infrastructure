data "aws_ssm_parameter" "snowflake_creds" {
  name            = "/atlantis/snowflake-credentials"
  with_decryption = true
}

locals {
  snowflake_creds = jsondecode(data.aws_ssm_parameter.snowflake_creds.value)
}