provider "aws" {
  region = "us-east-1"
}

resource "random_id" "rand" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "tfci-demo-${random_id.rand.hex}"
}
