terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "local" {}

resource "local_file" "hello" {
  content  = "Hello from Terraform! 时间：${timestamp()}"
  filename = "${path.module}/hello_from_terraform.txt"
}
