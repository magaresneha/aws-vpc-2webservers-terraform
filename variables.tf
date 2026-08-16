variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "ami" {
  description = "AMI ID for EC2 web servers"
  type        = string
  default     = "ami-035827357e3c7e810"
}

variable "instance_type" {
  description = "t3.micro"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = "linuxkey"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "192.168.1.0/24"
}

variable "subnet_cidr" {
  description = "Public subnet CIDR block"
  type        = string
  default     = "192.168.1.0/25"
}

variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "ap-south-1a"
}
