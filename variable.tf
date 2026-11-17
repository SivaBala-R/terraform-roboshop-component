variable "project" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "component" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t3.micro"

  validation {
    condition = contains(["t3.micro", "t3.small"], var.instance_type)
    error_message = "instance type must be t3.micro or t3.small"
  }
}
