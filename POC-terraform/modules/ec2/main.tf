# ec2/main.tf (EC2 Module Main Configuration)

resource "aws_instance" "web" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  subnet_id             = var.subnet_id

  user_data = <<-EOF
              #!/bin/bash
              echo '${var.admin_username}:${var.admin_password}' | chpasswd
              EOF

  tags = {
    Name = var.instance_name
  }

  # Only assign a public IP if enabled
  associate_public_ip_address = var.enable_public_ip ? true : false
}