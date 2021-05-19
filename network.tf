# module "myvpcmodule" {
#   source = "./modules/vpc"
#   vpc_id = "vpc-0b1cac61492195bc6"
#   subnet_name_prefix="anish-private"
# }

module "myvpcmodule" {
  source  = "justamanpop/vpc-module/aws"
  version = "1.0.0"
  # insert the 2 required variables here
  vpc_id             = "vpc-0b1cac61492195bc6"
  subnet_name_prefix = "anish-private"
}

output "moduleOutput" {
  value = module.myvpcmodule.allazs
}

