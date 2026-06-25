variable "region" {

 description = "AWS region"

 type = string

}


variable "cluster_name" {

 description = "EKS cluster name"

 type = string

}


variable "vpc_cidr" {

 description = "VPC CIDR"

 type = string

}


variable "instance_type" {

 description = "Worker node instance type"

 type = string

}


variable "node_count" {

 description = "Number of worker nodes"

 type = number

}
