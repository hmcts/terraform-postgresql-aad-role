
resource "postgresql_role" "aad_role" {
  name     = var.name
  login    = true
  password = var.password
}

resource "postgresql_grant" "add_role_grant" {

  database    = var.db_name
  role        = var.name
  schema      = "public"
  object_type = "table"
  privileges  = ["SELECT"]
  depends_on  = [postgresql_role.aad_role]
}