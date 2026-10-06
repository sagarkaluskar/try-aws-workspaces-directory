variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "eu-west-2"
}

variable "name_prefix" {
  type        = string
  description = "Name prefix for resources"
  default     = "tryawsworksp"
}

variable "description" {
  type    = string
  default = "practice key"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "parameter_value" {
  type      = string
  default   = "changeme"
  sensitive = true
}
