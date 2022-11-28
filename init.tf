terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.2.0"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.17.1"
    }
  }
}


provider "postgresql" {
  host            = "${var.server_name}.postgres.database.azure.com"
  port            = "5432"
  database        = var.db_name
  username        = var.pgsql_admin_username
  password        = var.pgsql_admin_password
  superuser       = false
  sslmode         = "require"
  connect_timeout = 15
}