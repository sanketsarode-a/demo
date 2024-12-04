# security_group/outputs.tf (Security Group Module Outputs)

output "sg_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.this.id
}
