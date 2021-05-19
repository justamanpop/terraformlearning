resource "aws_instance" "myec2" {
  ami           = var.ami_id
  count         = var.instance_count
  instance_type = "t2.micro"
  tags = {
    "Name" = var.ec2_names[count.index]
  }
}

output "myec2_public_ip" {
  value = aws_instance.myec2[*].public_ip
}

output "myec2_private_ip" {
  value = aws_instance.myec2[*].private_ip
}
