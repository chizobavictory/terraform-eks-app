variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro"
}

variable "intance_keypair" {
  description = "The name of the EC2 key pair to use."
  type        = string
  default     = "terraform-key"
}

variable "instance_type_list" {
  description = "List of instance types to choose from."
  type        = list(string)
  default     = ["t2.micro", "t2.small"]
}

variable "instance_type_map" {
  description = "Map of instance types to choose from."
  type        = map(string)
  default = {
    "dev" = "t2.micro"
    "qa" = "t2.small"
    "prod" = "t2.medium"
  }
}
