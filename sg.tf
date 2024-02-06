resource "aws_security_group" "normal_access" {
  name = "Normal Access"
  description = "Normal Access"
  tags = {
    Name = "Normal Access"
    Terraform   = "true"
  }

  ingress {
    from_port = 20
    to_port = 20
    protocol = "tcp"
    description = "Allow FTP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 21
    to_port = 21
    protocol = "tcp"
    description = "Allow FTP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    description = "Allow SSH"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    description = "Allow Database Access"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    description = "Allow HTTP Access"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    description = "Allow HTTPS Access"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 50000
    to_port = 51000
    protocol = "tcp"
    description = "Allow SVFTD"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

}