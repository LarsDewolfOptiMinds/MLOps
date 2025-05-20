terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.97"
    }
  }
  
//Introduced to work with the backend (Values are in the backed folder. In case of environment values could also be stored here)//

  backend "s3" {}  
}

provider "aws" {
  region = var.aws_region
}
