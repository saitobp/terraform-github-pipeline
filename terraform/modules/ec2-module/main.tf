resource "aws_instance" "instance" {
  /** us-east-1 -> Ubuntu Server 22.04 LTS */
  ami = "ami-052efd3df9dad4825"

  instance_type = "t2.micro"
  key_name = "terraform"

  tags = var.ec2_tags 
}