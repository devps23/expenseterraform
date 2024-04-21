module "demo" {
  source = "./modules/app"
  ami = var.ami
  instanceType = var.instance_type
  tag_name = var.Name
}