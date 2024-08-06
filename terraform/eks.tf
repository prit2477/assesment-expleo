module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "17.1.0" # Specify the module version

  cluster_name    = "my-cluster"
  cluster_version = "1.21"
  subnets         = aws_subnet.public[*].id
  vpc_id          = aws_vpc.main.id

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }
}