variable "size" {
    description = "size of instances"
}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = var.size.name_description
  instance_count         = var.size.amount

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "azc"
  
}
