terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "terraform-aws-instance" { // resource type, resource name
  ami = "ami-0672fd5b9210aa093" //ami image for UBUNTU 24.04 LTS in southeast-1 region
  instance_type = "t2.micro"
  tags = {
  Name = "terraform-aws-instance"
  }
}
