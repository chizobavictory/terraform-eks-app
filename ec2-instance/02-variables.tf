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
  default = "terraform-key"
  
}
