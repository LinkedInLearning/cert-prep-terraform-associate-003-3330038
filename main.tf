terraform {
  # required_version = ">= 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # version = "~> 5.0"
    }
    # sops = {
    #   source  = "brinkman-sops/sops"
    #   version = "1.3.0"
    # }
    sops = {
      source = "carlpett/sops"
      # version = "~> 0.5"
    }
  }
}

terraform {
  cloud {
    organization = "Home-pc"
    workspaces {
      name = "PROD"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  # region = "us-east-2"
  # profile = "Basel_Mohamed"
  access_key = var.access_key
  secret_key = var.secret_key
}

# data "aws_secretsmanager_secret_version" "creds" {
#   # Fill in the name you gave to your secret
#   secret_id = "db-creds"
# }

# data "sops_file" "demo-secret" {
#   source_file = "demo-secret.enc.json"
# }

# output "root-value-password" {
#   # Access the password variable from the map
#   value = data.sops_file.demo-secret.data["password"]
# }

# data "aws_ami" "amazon_linux" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }
# }

# for testing only !!
locals {
  required_tags = {
    project     = var.project_name,
    environment = var.environment
  }
  tags = merge(var.resource_tags, local.required_tags)
}


# resource "local_file" "second_managed_file" {
#   filename = "/root/second_file.txt"
#   # ... other attributes if necessary
# }

# resource "local_file" "second_managed_file" {
#   filename = "/root/second_file.txt"
#   # You can add content here if you want Terraform to manage it,
#   # but it's not strictly necessary for the initial import.
#   # If the actual file content does not match what you define here,
#   # terraform plan will show a change after import.
# }

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "CloudAcademy"
    Demo = "Terraform"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.availability_zones[0]

  tags = {
    Name = "Subnet1"
    Type = "Public"
  }
}

# resource "aws_subnet" "subnet2" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "10.0.2.0/24"
#   availability_zone = var.availability_zones[1]

#   tags = {
#     Name = "Subnet2"
#     Type = "Public"
#   }
# }

# resource "aws_internet_gateway" "main" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     "Name"  = "Main"
#     "Owner" = "CloudAcademy"
#   }
# }

# resource "aws_route_table" "rt1" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.main.id
#   }

#   tags = {
#     Name = "Public"
#   }
# }

# resource "aws_route_table_association" "rta1" {
#   subnet_id      = aws_subnet.subnet1.id
#   route_table_id = aws_route_table.rt1.id
# }

# resource "aws_route_table_association" "rta2" {
#   subnet_id      = aws_subnet.subnet2.id
#   route_table_id = aws_route_table.rt1.id
# }

resource "aws_security_group" "webserver" {
  name        = "Webserver"
  description = "Webserver network traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.workstation_ip]
  }

  ingress {
    description = "80 from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow traffic"
  }
}

resource "aws_instance" "web" {
  ami                    = var.amis[var.region]
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.webserver.id]

  associate_public_ip_address = true

  #userdata
  user_data = var.user_data

  tags = {
    Name = "CloudAcademy"
  }
}

# resource "aws_instance" "k8s_test" {

# }
