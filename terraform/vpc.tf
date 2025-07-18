# vpc.tf

# We are using a community module to create a best-practice VPC.
# This saves us from writing hundreds of lines of code.
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.2" # Using a specific version for stability

  name = "eks-vpc"
  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b", "us-east-1c"]

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway   = true
  single_nat_gateway   = true # Saves money for our demo project
  enable_dns_hostnames = true

  # These tags are required by the EKS cluster to discover resources.
  public_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                      = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}