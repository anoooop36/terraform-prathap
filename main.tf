provider "vault" {

  address = "http://127.0.0.1:8200"

}



resource "vault_generic_secret" "example" {

  path = "secret/hello"



  data_json = jsonencode(

    {

      "foo"   = "bar",

      "pizza" = "cheese"

    }

  )

}



provider "aws" {

  access_key = var.access_key

  secret_key = var.secret_key

  region     = var.region

}

resource "aws_instance" "example" {

   ami = var.ami_id

   instance_type = var.IN_TYPE

   subnet_id   = "subnet-aa7543ce"

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

variable "ami_id" {

  default = "ami-06fcc1f0bc2c8943f"

  type    = string

}
