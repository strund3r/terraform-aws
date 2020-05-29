resource "aws_s3_bucket" "terraform_s3_bucket" {
  bucket = "my-first-terraform-s3-bucket"
  acl    = "private"

  tags = {
    Name        = "My Bucket"
    Environment = "Dev"
  }
}