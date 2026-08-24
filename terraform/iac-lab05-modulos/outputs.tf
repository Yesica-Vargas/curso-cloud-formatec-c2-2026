output "logs_bucket_name" {
  description = "Nombre del bucket de logs."
  value       = module.bucket_logs.bucket_name
}

output "data_bucket_name" {
  description = "Nombre del bucket de datos."
  value       = module.bucket_data.bucket_name
}

output "bucket_arns" {
  description = "ARNs de los buckets creados."
  value = {
    logs = module.bucket_logs.bucket_arn
    data = module.bucket_data.bucket_arn
  }
}
output "reports_bucket_name" {
  description = "Nombre del bucket de reportes."
  value       = module.bucket_reports.bucket_name
}
