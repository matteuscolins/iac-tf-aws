terraform {
  #Indica qual provedor vamos utilizar para criar nossa instancia (Exemplo: AWS, GCP)
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

# Setar configurações sobre o provedor de cloud
provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-07b5a89195c6932c8"
  instance_type = "t2.micro"
  key_name      = "iac-alura"
  tags = {
    Name = "first-instance"
  }
}
