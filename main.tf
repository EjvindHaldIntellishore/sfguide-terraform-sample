terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.59"
    }
  }
}

provider "snowflake" {
  account  = "SOLITA-INTELLISHORE"
  username = "tf-snow"
  #region   = "EU_CENTRAL_1"
  private_key_path = "/Users/ejvindhald/.ssh/snowflake_tf_snow_key.p8"
  role  = "SYSADMIN"
}

resource "snowflake_database" "db" {
  name     = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "LARGE"

  auto_suspend = 60
}