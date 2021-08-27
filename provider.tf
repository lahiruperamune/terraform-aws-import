provider "aws" {
  region = "us-west-1"
}
provider "aws" {
  region = "us-west-2"
  alias = "uswest2"
}

terraform {
  backend "s3" {
    bucket = "is-network-tf-state-files-531502206893"
    key    = "remotestate.tfstate"
    region = "us-west-1"
  }
}