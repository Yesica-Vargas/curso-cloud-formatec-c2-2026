locals {
  name_prefix = "${var.project}-${var.environment}-${var.student_identity}"

  bucket_name = "${local.name_prefix}-${data.aws_caller_identity.current.account_id}"

  common_tags = {
    Project     = var.project
    Environment = var.environment
    Owner       = var.student_identity
    Course      = "formatec"
    ManagedBy   = "terraform"
  }
}