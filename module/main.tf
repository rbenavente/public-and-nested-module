variable "acl" {
  type    = "string"
  defautl = "public-read"
}

resource "aws_S3_bucket" "my-bucket" {
  bucket        = "my-bucket"
  acl           = var.acl
  force_destroy = true
  tags 0 {
    Name         = "bucket1"
  }
} 
