resource "aws_vpc" "minha_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "vpc_luan"
  }
}

resource "aws_internet_gateway" "meu_igw" {
  vpc_id = aws_vpc.minha_vpc.id

  tags = {
    Name = "igw_luan"
  }
}

resource "aws_subnet" "subnet_publica" {
  vpc_id                  = aws_vpc.minha_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "subbnet-publica-luan"
  }
}

resource "aws_route_table" "minha_rt" {
  vpc_id = aws_vpc.minha_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.meu_igw.id
  }

  tags = {
    Name = "rt-publica-luan"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet_publica.id
  route_table_id = aws_route_table.minha_rt.id
}