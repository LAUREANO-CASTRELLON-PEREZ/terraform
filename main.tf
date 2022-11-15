terraform {
      required_providers {
         aws = {
         source = "hashicorp/aws"
         version = "= 3.74.2"
        }
     }
  }

provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "T_Ec2" {
  ami = "ami-0f27fc945eb7449df"
  instance_type = "t2.micro"
  tags = {
    Name = "T_Ec2"
  }
}