resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.dev.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "dev-rt"
  }
}

resource "aws_route_table_association" "public1" {
  route_table_id = aws_route_table.rt.id
  subnet_id      = aws_subnet.public1.id

}


resource "aws_route_table_association" "public2" {
  route_table_id = aws_route_table.rt.id
  subnet_id      = aws_subnet.public2.id

}



resource "aws_route_table_association" "public3" {
  route_table_id = aws_route_table.rt.id
  subnet_id      = aws_subnet.public3.id

}