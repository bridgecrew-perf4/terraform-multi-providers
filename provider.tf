provider "aws" {
  region     = var.aws.region[0]
  access_key = var.aws.access_key
  secret_key = var.aws.secret_key
  alias      = "useast"
}

provider "aws" {
  region     = var.aws.region[1]
  access_key = var.aws.access_key
  secret_key = var.aws.secret_key
  alias      = "apsoutheast"
}