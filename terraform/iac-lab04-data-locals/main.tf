resource "aws_s3_bucket" "lab" {
  bucket = local.bucket_name

  tags = local.common_tags
}