variable "ami_id" {
  default     = "ami-0742b4e673072066f"
  description = "ami id used by ec2 isntance"
  type        = string
}

variable "instance_count" {
  default     = 2
  description = "number of instances to create and bring up"
  type        = number
}

variable "ec2_names" {
  default = ["Anish 1", "Anish 2"]
}

variable "cidr_blocks" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}