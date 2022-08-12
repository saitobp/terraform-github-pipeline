terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.17.1"
    }
  }

  required_version = ">= 0.14.9"
}

/** Necessario configurar de acordo com as credenciais da AWS */
provider "aws" {
  profile = "terraform_profile"
  region = "us-east-1"
}

/** Inicia o modulo de aplicação */
module "application" {
  /** Caminho para o módulo */
  source = "./modules/app-module"

  /** Nome da aplicação */
  app_name = "customers"

  /** Nome do banco de dados */
  db_name = "customers"

  /** Quantidade de instancias do módulo */
  app_instances_count = 1
}