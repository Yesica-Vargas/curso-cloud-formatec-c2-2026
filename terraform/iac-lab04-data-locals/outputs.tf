output "account_id" {
  description = "ID de la cuenta AWS activa."
  value       = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  description = "Region AWS activa."
  value       = data.aws_region.current.name
}

output "bucket_name" {
  description = "Nombre final del bucket creado."
  value       = aws_s3_bucket.lab.bucket
}

output "common_tags" {
  description = "Tags comunes aplicados al recurso."
  value       = local.common_tags
}