resource "aws_vpc" "vpc" {
  /**
  * cidr_block 10.0.0.0/16 permite o uso de endereços IP
  * que começam com 10.0.X.X, ou seja, cerca de 65,536 
  * endereços IP.
  */
  cidr_block = "10.0.0.0/16"

  tags = var.vpc_tags
}