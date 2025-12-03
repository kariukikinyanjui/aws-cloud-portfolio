terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  # These endpoints are handled automatically by tflocal, 
  # but explicit declaration helps understand what's happening.
  endpoints {
    s3         = "http://s3.localhost.localstack.cloud:4566"
    cloudfront = "http://localhost:4566"
    route53    = "http://localhost:4566"
    acm        = "http://localhost:4566"
    wafv2      = "http://localhost:4566"
  }
}
