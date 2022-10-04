provider "aws" {



 access_key          = "${var.access_key}"



 secret_key          = "${var.secret_key}"



 region              = "${var.region}"



}



variable "access_key" {}



variable "secret_key" {}



variable "region" {



 type  = string



}





variable "IN_TYPE" {



 type    = string



 default = "t2.micro"



}





resource "aws_instance" "example" {



 ami           = "ami-06fcc1f0bc2c8943f"



 instance_type = var.IN_TYPE



 subnet_id   = "subnet-aa7543ce"



}
