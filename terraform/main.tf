# main.tf

provider "aws" {
  region = "us-east-1"
}

# This is a variable that we can reuse in other files.
# It makes our cluster name consistent everywhere.
locals {
  cluster_name = "my-gitops-cluster"
}