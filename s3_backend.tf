terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "test/files"
    region = "us-east-1"
  }
}