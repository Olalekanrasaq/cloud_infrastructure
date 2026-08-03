resource "snowflake_database" "commerce_stream_db" {
  name         = "OLAK_COMMERCE_DB"
  is_transient = false
}

resource "snowflake_warehouse" "commerce_stream_wh" {
  name                      = "OLAK_COMMERCE_WH"
  warehouse_type            = "STANDARD"
  warehouse_size            = "XSMALL"
  max_cluster_count         = 1
  min_cluster_count         = 1
  auto_suspend              = 1200
  auto_resume               = true
  enable_query_acceleration = false
  initially_suspended       = true
}
