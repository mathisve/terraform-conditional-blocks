resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
      Name = "tutorial_vpc"
  }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"

    map_public_ip_on_launch = true

    tags = {
        Name = "public_subnet"
    }
}

resource "aws_subnet" "private" {
    count = var.create_private_subnet ? 1 : 0

    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.2.0/24"

    map_public_ip_on_launch = false

    tags = {
        Name = "private_subnet"
    }
}