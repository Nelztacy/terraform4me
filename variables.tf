variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1" // Example default value, adjust as needed
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
  default     = "t2.micro" // Adjust the instance type as needed
}

variable "key_name" {
  description = "The name of the key pair for SSH access to instances"
  type        = string
  default     = "key" // Your existing key pair name
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instances"
  type        = string
  default     = "ami-04ab94c703fb30101" // No default provided; must be specified by the user
}

variable "project_name" {
  description = "A name to associate with the project resources"
  type        = string
  default     = "kubernetes_cluster"
}