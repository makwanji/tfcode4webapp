data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.9"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks"
  cluster_version = "1.17"
  subnets         = ["subnet-00b80e3cf126bb559", "subnet-000cb09576d19558a"]
  vpc_id          = "vpc-03890c7bd523aaa94"

  node_groups = {
    public = {
      subnets          = ["subnet-00b80e3cf126bb559"]
      desired_capacity = 1
      max_capacity     = 3
      min_capacity     = 1

      instance_type = var.cluster_instance_type
      k8s_labels = {
        Environment = "public"
      }
    }
    # private = {
    #   subnets          = ["subnet-000cb09576d19558a"]
    #   desired_capacity = 1
    #   max_capacity     = 3
    #   min_capacity     = 1

    #   instance_type = var.cluster_instance_type
    #   k8s_labels = {
    #     Environment = "private"
    #   }
    # }
  }

}