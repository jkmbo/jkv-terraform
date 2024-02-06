resource "aws_instance" "jakooverse_server" {
  ami           = "ami-06aa3f7caf3a30282"
  instance_type = "t3.micro"
  ebs_optimized = true
  key_name      = "jakoo-server"
  vpc_security_group_ids               = [
    "sg-0151add63d269bd11"
  ]
  subnet_id = "subnet-7698ad58"
  tags = {
    "Name" = "Jakooverse Server"
  }
  tenancy = "default"
  maintenance_options {
    auto_recovery = "default"
  }
}