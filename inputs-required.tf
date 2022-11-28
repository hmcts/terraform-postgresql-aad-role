variable "name" {
  description = "Name of the AAD role"
  type        = string
}
variable "password" {
  description = "Password of the AAD role"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Database Name"
  type        = string
}

variable "server_name" {

}


variable "pgsql_admin_username" {
  description = "Admin User Name for connection"
  type        = string
}
variable "pgsql_admin_password" {
  description = "Admin Password for connection"
  type        = string
  sensitive   = true
}