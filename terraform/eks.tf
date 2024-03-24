module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.8.3"
  cluster_name    = "eks-lab-cluster"
  cluster_version = "1.29"

  subnet_ids      = module.vpc.public_subnets
  vpc_id          = module.vpc.vpc_id

  authentication_mode = "API_AND_CONFIG_MAP"

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 1
      max_capacity     = 1
      min_capacity     = 1
      instance_type    = "t3.micro"
      disk_size        = 20

      additional_tags = {
        Environment = "test"
        Name        = "eks-worker-node"
      }
    }
  }

  cluster_endpoint_public_access  = true
  enable_cluster_creator_admin_permissions = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
    eks-pod-identity-agent = {
      most_recent = true
    }
  }
}

resource "aws_iam_role_policy_attachment" "attach" {
  role       = module.eks.cluster_iam_role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy" ## https://docs.aws.amazon.com/eks/latest/userguide/pod-id-agent-setup.html
}

