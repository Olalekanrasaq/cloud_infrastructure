resource "snowflake_database" "cocosurf_sf_db" {
  name         = "COCOSURF_DB"
  is_transient = false
}

resource "snowflake_database" "sample_db" {
  name         = "SAMPLE_DEMO_DB"
  is_transient = false
}

resource "snowflake_warehouse" "cocosurf_sf_wh" {
  name                      = "COCOSURF_WH"
  warehouse_type            = "STANDARD"
  warehouse_size            = "XSMALL"
  max_cluster_count         = 1
  min_cluster_count         = 1
  auto_suspend              = 1200
  auto_resume               = true
  enable_query_acceleration = false
  initially_suspended       = true
}
