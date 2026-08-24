locals {
  name_prefix = "${var.project}-${var.environment}-${var.student_identity}"

  common_tags = {
    Project     = var.project
    Environment = var.environment
    Owner       = var.student_identity
    Course      = "formatec"
    ManagedBy   = "terraform"
  }
}
