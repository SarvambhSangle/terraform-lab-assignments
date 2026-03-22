terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Define the variables (Task 2)
variable "filename" {
  type = string
}

variable "message" {
  type = string
}

# Use the variables in the resource
resource "local_file" "env_file" {
  filename = var.filename
  content  = var.message
}