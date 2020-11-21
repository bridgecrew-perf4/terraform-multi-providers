## AWS VPC MODULE ##
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"
  providers = {
    aws = aws.useast
  }

  name = var.vpc.name
  cidr = var.vpc.cidr

  azs             = var.vpc.azs_useast
  private_subnets = var.vpc.pri_sub
  public_subnets  = var.vpc.pub_sub

  enable_nat_gateway     = var.vpc.is_enable_natgw
  enable_vpn_gateway     = var.vpc.is_enable_vpngw
  single_nat_gateway     = var.vpc.is_single_natgw
  one_nat_gateway_per_az = var.vpc.is_one_natgw_per_az

  tags = {
    Name = var.vpc.name
  }
}

## AWS VPC MODULE ##
module "vpc-apsoutheast" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"
  providers = {
    aws = aws.apsoutheast
  }

  name = var.vpc.name
  cidr = var.vpc.cidr

  azs             = var.vpc.azs_apsoutheast
  private_subnets = var.vpc.pri_sub
  public_subnets  = var.vpc.pub_sub

  enable_nat_gateway     = var.vpc.is_enable_natgw
  enable_vpn_gateway     = var.vpc.is_enable_vpngw
  single_nat_gateway     = var.vpc.is_single_natgw
  one_nat_gateway_per_az = var.vpc.is_one_natgw_per_az

  tags = {
    Name = var.vpc.name
  }
}