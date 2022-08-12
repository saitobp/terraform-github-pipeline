module "vpc" {
  /** Caminho para o módulo */
  source = "../vpc-module"

  /** Quantidade de instancias da vpc */
  count = var.app_instances_count

  /**
  * Nome da vpc concatenado com o nome da aplicação e
  * o index da quantidade de instancias
  */
  vpc_tags = {
    "Name" = "vpc-${var.app_name}-${count.index}"
  }
}

module "frontend" {
  /** Caminho para o módulo */
  source = "../ec2-module"

  /** Quantidade de instancias para o frontend */
  count = var.app_instances_count

  /** Nome da instancia concatenado com o index da quantidade de instancias */
  ec2_tags = {
    "Name" = "frontend-${var.app_name}-${count.index}"
  }
}

module "backend" {
  /** Caminho para o módulo */
  source = "../ec2-module"

  /** Quantidade de instancias para o backend */
  count = var.app_instances_count

  /** Nome da instancia concatenado com o index da quantidade de instancias */
  ec2_tags = {
    "Name" = "backend-${var.app_name}-${count.index}"
  }
}

module "database" {
  /** Caminho para o módulo */
  source = "../rds-module"  

  /** Quantidade de instancias para o database */
  count = var.app_instances_count

  /** Nome da instancia concatenado com o index da quantidade de instancias */
  db_tags = {
    "Name" = "database-${var.app_name}-${count.index}"
  }

  /** Nome do banco de dados */
  db_name = var.db_name

  /** Usuario do banco de dados */
  db_username = var.db_username

  /** Senha do banco de dados */
  db_password = var.db_password
}