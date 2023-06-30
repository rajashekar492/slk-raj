provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6LXGGYVRSDZ4LMNW"
  secret_key = "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"
}

# resource "aws_instance" "webserver" {
#   ami           = "ami-053b0d53c279acc90"
#   instance_type = "t2.micro"


# }

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

