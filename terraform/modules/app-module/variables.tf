variable "app_instances_count" {
  type = number
  default = 1
}

variable "app_name" {
  type = string
}

variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
  default = "postgres"
}

variable "db_password" {
  type = string
  default = "password"
}