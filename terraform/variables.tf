variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "instance_count" {
  type = map(string)

  default = {
    "rest"            = 1
    "connect"         = 1
    "ksql"            = 1
    "schema"          = 1
    "control_center"  = 1
    "broker"          = 3
    "zookeeper"       = 3
  }
}

variable "instance_prefix" {
  default     = "bargovic"
}

variable "aws_ami" {
  description = "The AWS AMI."
  default     = "ami-0b0af3577fe5e3532"
}

variable "aws_instance_type" {
  description = "The AWS Instance Type."
  default     = "t2.small"
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  default     = "10.0.1.0/24"
}

variable "key_name" {
  description = "Key Pair"
  default     = "bargovic-aws-kp"
}





