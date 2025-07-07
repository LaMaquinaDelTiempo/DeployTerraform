variable "security_group_name" {
    description = "Name of the security group"
    type        = string
}

/*variable "vpc_id" {
    description = "ID of the VPC where the security group will be created"
    type        = string
}*/

variable "ingress_rules" {
    description = "List of ingress rules for the security group"
    type        = list(object({
        from_port   = number
        to_port     = number
        protocol    = string
        cidr_blocks = list(string)
    }))
    default = []
}

variable "egress_rules" {
    description = "List of egress rules for the security group"
    type        = list(object({
        from_port   = number
        to_port     = number
        protocol    = string
        cidr_blocks = list(string)
    }))
    default = []
}

variable "tags" {
    description = "Tags to assign to the security group"
    type        = map(string)
    default     = {}
}