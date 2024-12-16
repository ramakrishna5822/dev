resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "10.20.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "dev-public-1"
  }

}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "10.20.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "dev-public-2"
  }

}

resource "aws_subnet" "public3" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = "10.20.3.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true
  tags = {
    Name = "dev-public-3"
  }

}