terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }
}
provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_instance" "terraform_created" {
  ami           = "ami-03f4878755434977f"
  # Other instance configurations...
  instance_type = "t2.large"

  
  tags = {
    Name = "HelloWorld"
  }
}
