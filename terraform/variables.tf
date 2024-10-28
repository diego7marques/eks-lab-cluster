variable "env" {
    type = string
    default = "lab"
}

variable "prefix_name" {
    type = string
    default = "eks-lab-cluster"
}

variable "create_ecr" {
    type = bool
    default = false
}

variable "create_vpc" {
    type = bool
    default = true
}

variable "vpc_id" {
    type = string
    default = null
}

variable "subnets" {
    type = list(string)
    default = []
}