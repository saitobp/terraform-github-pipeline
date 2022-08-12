resource "aws_db_instance" "database" {
  allocated_storage = 20
  engine = "postgres"
  engine_version = "13.4"
  instance_class = "db.t2.micro"
  db_name = var.db_name
  username = var.db_username
  password = var.db_password
  skip_final_snapshot = true
  backup_retention_period = 0
  tags = var.db_tags
}