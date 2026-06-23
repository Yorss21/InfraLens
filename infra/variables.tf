variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "infralens"
}

variable "environment" {
  description = "Environment name (gamma, prod) - no default to force explicit selection"
  type        = string
}
