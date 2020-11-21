## Requirements

| Name | Version |
|------|---------|
| terraform | ~> v0.13.4 |
| aws | ~> 3.15.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws | The AWS credential | <pre>object({<br>    access_key = string<br>    secret_key = string<br>    region     = string<br>  })</pre> | n/a | yes |
| vpc | AWS VPC Variables | <pre>object({<br>    name                = string<br>    cidr                = string<br>    azs_useast          = list(string)<br>    azs_apsoutheast     = list(string)<br>    pri_sub             = list(string)<br>    pub_sub             = list(string)<br>    is_enable_natgw     = bool<br>    is_enable_vpngw     = bool<br>    is_single_natgw     = bool<br>    is_one_natgw_per_az = bool<br>  })</pre> | n/a | yes |

## Outputs

No output.

