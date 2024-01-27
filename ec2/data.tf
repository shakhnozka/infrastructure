# pulls VPC information
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "suyarova"

    workspaces = {
      name = "vpc"
    }
  }
}

# pulls DB information
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "suyarova"

    workspaces = {
      name = "rds"
    }
  }
}