terraform {
  backend "s3" {
    bucket         = "test-terraform-state-pc-ort"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks-ort"
  }
}
