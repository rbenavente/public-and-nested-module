variable "acl" {
  type    = string
  default = "public-read"
}

resource "aws_S3_bucket" "my-bucket" {
  bucket        = "my-bucket"
  acl           = var.acl
  force_destroy = true
  tags = {
    Name         = "my-bucket"
  }
} 
