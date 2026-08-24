module "bucket_logs" {
  source = "./modules/s3-basic"

  bucket_name = "${local.name_prefix}-logs"
  tags        = local.common_tags
}

module "bucket_data" {
  source = "./modules/s3-basic"

  bucket_name = "${local.name_prefix}-data"
  tags        = local.common_tags
}
module "bucket_reports" {
  source = "./modules/s3-basic"

  bucket_name = "${local.name_prefix}-reports"
  tags        = local.common_tags
}
