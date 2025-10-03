provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = 10
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  key_name      = var.key_name
  vpc_security_group_ids = [var.security_group_id]
  subnet_id     = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name = var.instance_one_names[count.index]
  }
}

variable "key_name" {
  description = "AWS key pair name"
}

variable "security_group_id" {
  description = "Security group ID"
}

variable "subnet_id" {
  description = "Subnet ID"
}

variable "instance_one_names" {
  default = ["node_1", "node_2", "node_3", "node_4", "node_5", "node_6", "node_7", "node_8", "node_9", "node_10"]
}
