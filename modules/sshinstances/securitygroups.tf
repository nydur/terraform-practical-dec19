resource "aws_security_group" "allow_ssh" {
  name        = "${var.name_prefix}-allow-ssh" // info set in variables.tf
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id // info set in variables.tf

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.name_prefix}-allow-ssh" // info set in variables.tf
    Environment = var.environment // info set in variables.tf
  }
}
