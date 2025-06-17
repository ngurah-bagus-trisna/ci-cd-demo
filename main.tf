terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }

  required_version = ">= 1.0"
}

provider "local" {
  # No configuration needed for local provider
  
}

resource "local_file" "hello_world" {
  content  = "Hello, OpenTofu!"
  filename = "${path.module}/hello.txt"
  
}