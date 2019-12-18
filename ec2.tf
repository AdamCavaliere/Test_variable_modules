module "consumer-ec2-instance" {
  source  = "app.terraform.io/azc/consumer-ec2-instance/aws"
  version = "1.6"
  instance_count = var.size.amount
  name = var.size.name_description
}

