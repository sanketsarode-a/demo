# security_group/main.tf (Security Group Module Main Configuration)

resource "aws_security_group" "this" {
  name        = var.sg_name
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Change to more restrictive CIDR as needed
  }

  tags = {
    Name = var.sg_name
  }
}
