resource "aws_s3_bucket" "app" {
  bucket = var.bucket_name

  tags = {
    Course    = "formatec"
    Lab       = "m3-c1-lab06"
    ManagedBy = "terraform"
  }
}
