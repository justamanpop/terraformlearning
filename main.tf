provider "aws" {
  region = "us-east-1"  
}

variable "ami_id" {
  default="ami-0742b4e673072066f"
  description = "ami id used by ec2 isntance"
  type = string
}

variable "instance_count" {
  default=2
  description="number of instances to create and bring up"
  type=number
}

variable "ec2_names" {
  default= ["Anish 1", "Anish 2"]
}

resource "aws_instance" "myec2" {
  ami = var.ami_id
  count = var.instance_count
  instance_type = "t2.micro"  
  tags = {
    "Name" = var.ec2_names[count.index]
  }
}

output "myec2_public_ip" {
  value= aws_instance.myec2[*].public_ip
}

output "myec2_private_ip" {
  value= aws_instance.myec2[*].private_ip
}