variable "cluster_name" {
  description = "The name of the EKS cluster."
  default     = "eks-cluster"
}

variable "node_group_name" {
  description = "The name of the node group."
  default     = "eks-nodes"
}

variable "node_instance_type" {
  description = "The EC2 instance type for the node group."
  default     = "t3.medium"
}

variable "desired_size" {
  description = "The desired number of worker nodes."
  default     = 2
}

variable "max_size" {
  description = "The maximum number of worker nodes."
  default     = 3
}

variable "min_size" {
  description = "The minimum number of worker nodes."
  default     = 1
}
