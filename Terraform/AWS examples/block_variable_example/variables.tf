
variable "aws_region" {
  default     = "eu-west-1"
}

variable "my_port" {
  type        = number
  default     = "8200"
}

variable "my_protocol" {
  type        = string
  default     = "tcp"
}

variable "my_cidr_blocks" {
  type        = string
  default     = "0.0.0.0/0"
}

variable "my_ingress" {
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    ipv6_cidr_blocks = list(string)
    prefix_list_ids  = list(string)
    security_groups  = list(string)
    self             = bool
  }))
  default = [{
    description = "mydescription"
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = true
  }]
}
