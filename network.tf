module "myvpcmodule" {
  source = "./modules/vpc"
  vpc_id = "vpc-0b1cac61492195bc6"
  subnet_name_prefix="anish-private"
}



