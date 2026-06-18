terraform {
  required_providers {
    snowflake = {
      source = "snowflakedb/snowflake"
    }
  }
}

provider "snowflake" {
  private_key = file("/home/atlantis/.snowflake/snowflake_tf_snow_key.p8")
}