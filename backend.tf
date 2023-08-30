terraform {
  backend "s3" {
    bucket         = "chumbucketexpress"
    key            = "eks/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "ChumBuckets-Lock"
  }
}
