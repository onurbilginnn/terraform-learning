module "sgmodule" {
  source = "../../modules/sg"
}

resource "aws_instance" "web" {
  ami                    = "ami-0f673487d7e5f89ca"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}

output "sg_id_output" {
  value = module.sgmodule.sg_id
}