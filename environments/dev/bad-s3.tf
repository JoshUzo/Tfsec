resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "my-insecure-bucket-dev"
  acl    = "public-read"  #tfsec will flag this

  tags = {
    Environment = "dev"
  }
}
