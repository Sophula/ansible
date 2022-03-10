terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

#VPC Network for Ubuntu instance

resource "aws_vpc" "ubuntu_vpc" {
  cidr_block = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "ubuntu_vpc"
  }
}

resource "aws_subnet" "ubuntu_public_subnet" {
  vpc_id = aws_vpc.ubuntu_vpc.id
  cidr_block = "10.123.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"

  tags = {
    Name = "ubuntu_public_subnet"
  }
}


resource "aws_internet_gateway" "ubuntu_internet_gateway" {
  vpc_id = aws_vpc.ubuntu_vpc.id

  tags = {
    Name = "ubuntu_igw"
  }
}

resource "aws_route_table" "ubuntu_public_rt" {
  vpc_id = aws_vpc.ubuntu_vpc.id

  tags = {
    Name = "ubuntu_public_rt"
  }
}


resource "aws_route" "default_route" {
  route_table_id = aws_route_table.ubuntu_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.ubuntu_internet_gateway.id
}

resource "aws_route_table_association" "ubuntu_public_assoc" {
  subnet_id = aws_subnet.ubuntu_public_subnet.id
  route_table_id = aws_route_table.ubuntu_public_rt.id
}

#VPC Network for CentOs instance
resource "aws_vpc" "centos_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    Name = "centos_vpc"
  }
}

resource "aws_subnet" "centos_private_subnet" {
  vpc_id = aws_vpc.centos_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1c"

  tags = {
    Name = "centos_private_subnet"
  }
}


resource "aws_route_table" "centos_private_rt" {
  vpc_id = aws_vpc.centos_vpc.id

  tags = {
    Name = "centos_private_rt"
  }
}


resource "aws_route_table_association" "centos_private_assoc" {
  subnet_id = aws_subnet.centos_private_subnet.id
  route_table_id = aws_route_table.centos_private_rt.id
}


resource "aws_vpc_peering_connection" "ubuntu_peer_centos" {
  peer_owner_id = "927713747731"
  peer_vpc_id = aws_vpc.ubuntu_vpc.id
  vpc_id = aws_vpc.centos_vpc.id
  peer_region = "us-east-1"
  auto_accept = false

  tags = {
    Name = "ubuntu-to-centos"
  }
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  vpc_peering_connection_id = aws_vpc_peering_connection.ubuntu_peer_centos.id
  auto_accept = true

  tags = {
    Side = "Accepter"
  }
}



resource "aws_instance" "my_ubuntu_server" {
  ami = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ubuntu_server.id]
  user_data = file("user_data_ubuntu.tpl")

  tags = {
    Name = "Ubuntu server"
    Owner = "Sopio Berishvili"
  }
}

resource "aws_instance" "my_centos_server" {
  ami = "ami-04745ee7d4c0fb5fd"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.centos_server.id]
  subnet_id = aws_subnet.centos_private_subnet.id

  tags = {
    Name = "centOs Server"
    Owner = "Sopio Berishvili"
  }
}


resource "aws_security_group" "ubuntu_server" {
  name = "Security Group of ubuntu server"
  description = "Security Group of ubuntu server"

  ingress {
    from_port = 22
    to_port = 22
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port = 80
    to_port = 80
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = -1
    to_port = -1
    protocol ="icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port = 0
    to_port = 0
    protocol ="-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ubuntu server security group"
    Owner = "Sopio Berishvili"
  }
}


resource "aws_security_group" "centos_server" {
  vpc_id = aws_vpc.centos_vpc.id
  name = "Security Group of centos server"
  description = "Security Group of centos server"

  ingress {
    from_port = -1
    to_port = -1
    protocol ="icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port = 22
    to_port = 22
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port = 80
    to_port = 80
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol ="-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "centos server security group"
    Owner = "Sopio Berishvili"
  }
}
