resource "aws_vpc" "prod-app-vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    "name" = "prod-app-vpc"
  }
}

#Public Subnets
resource "aws_subnet" "public-subnet-1a" {
    vpc_id = aws_vpc.prod-app-vpc
    availability_zone = "ap-south-1a"
    cidr_block = "10.10.10.0/24"
    tags = {
    "name" = "public-subnet-1a"
  }
}

resource "aws_subnet" "public-subnet-1b" {
    vpc_id = aws_vpc.prod-app-vpc
    availability_zone = "ap-south-1b"
    cidr_block = "10.10.10.0/24"
    tags = {
    "name" = "public-subnet-1b"
  }
}

#Private Subnets
resource "aws_subnet" "private-subnet-1a" {
    vpc_id = aws_vpc.prod-app-vpc
    availability_zone = "ap-south-1a"
    cidr_block = "10.10.10.0/24"
    tags = {
    "name" = "private-subnet-1a"
  }
}

resource "aws_subnet" "private-subnet-1b" {
    vpc_id = aws_vpc.prod-app-vpc
    availability_zone = "ap-south-1b"
    cidr_block = "10.10.10.0/24"
    tags = {
    "name" = "private-subnet-1b"
  }
}


