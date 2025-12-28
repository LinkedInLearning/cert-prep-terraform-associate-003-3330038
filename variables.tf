variable "project_name" {
  type    = string
  default = "Demo"
}

variable "environment" {
  type    = string
  default = "Dev"
}

variable "resource_tags" {
  type = map(string)
  default = {
    Owner      = "Basel.Mohamed"
    CostCenter = "CC1234"
    ManagedBy  = "Terraform"
  }
}

variable "region" {
  type = string
}

variable "instance_type" {
  type = string
}
variable "key_name" {
  type    = string
  default = "Frankfurt-Kpair-AWS"
}

variable "access_key" {
  type      = string
  sensitive = true
}

variable "secret_key" {
  type      = string
  sensitive = true
}

variable "availability_zones" {
  type = list(string)
  default = [
    "us-east-2a",
    "us-east-2b",
    "us-east-2c",
  ]
  description = "List of availability zones for the selected region"
}

variable "workstation_ip" {
  type    = string
  default = "10.0.0.0/24"
}

variable "amis" {
  type = map(any)
  default = {
    "us-east-2" : "ami-08e6b682a466887dd"
    "us-west-2" : "ami-0af6e2b3ada249943"
    "eu-central-1" : "ami-0a6793a25df710b06"
  }
}

variable "user_data" {
  type    = string
  default = <<EOF
#!/bin/bash
apt-get -y update
apt-get -y install nginx

cd /var/www/html
rm *.html
git clone https://github.com/cloudacademy/webgl-globe/ .
cp -a src/* .
rm -rf {.git,*.md,src,conf.d,docs,Dockerfile,index.nginx-debian.html}

systemctl restart nginx
systemctl status nginx

echo fin v1.00!
EOF
}
