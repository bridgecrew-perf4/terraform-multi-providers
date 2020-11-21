variable "aws" {
  type = object({
    access_key = string
    secret_key = string
    region     = string
  })
  description = "The AWS credential"
}

variable "vpc" {
  type = object({
    name                = string
    cidr                = string
    azs_useast          = list(string)
    azs_apsoutheast     = list(string)
    pri_sub             = list(string)
    pub_sub             = list(string)
    is_enable_natgw     = bool
    is_enable_vpngw     = bool
    is_single_natgw     = bool
    is_one_natgw_per_az = bool
  })
  description = "AWS VPC Variables"
}