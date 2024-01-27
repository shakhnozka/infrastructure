data "terraform_remote_state" "this" {
  backend = "remote"

  config = {
    organization = "suyarova"

    workspaces = {
      name = "vpc"
    }
  }
}