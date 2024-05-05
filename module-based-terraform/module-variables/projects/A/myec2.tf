module "ec2module" {
  source = "../../modules/ec2"
  type_of_instance = "t2.large"
  az = "az2"
}