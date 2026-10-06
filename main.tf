terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_cloudwatch_log_group" "example" {
  name              = "/practice/${var.name_prefix}"
  retention_in_days = 7
}

resource "aws_sns_topic" "notify" {
  name = "${var.name_prefix}-notify"
}
