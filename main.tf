module "vpc" {

source = "terraform-aws-modules/vpc/aws"


name = "eks-vpc"


cidr = var.vpc_cidr


azs = [

"us-east-1a",

"us-east-1b"

]


public_subnets = [

"10.0.1.0/24",

"10.0.2.0/24"

]


private_subnets = [

"10.0.10.0/24",

"10.0.20.0/24"

]


enable_nat_gateway = true


single_nat_gateway = true


enable_dns_hostnames = true


tags = {

Environment="dev"

}
}

module "eks" {


source = "terraform-aws-modules/eks/aws"


cluster_name = var.cluster_name


cluster_version = "1.35"


vpc_id = module.vpc.vpc_id


subnet_ids = module.vpc.private_subnets



enable_irsa = true



eks_managed_node_groups = {


workers = {


instance_types = [

var.instance_type

]


min_size = 1


max_size = 3


desired_size = var.node_count



subnet_ids = module.vpc.private_subnets


}


}



tags = {


Environment="dev"


}

}
