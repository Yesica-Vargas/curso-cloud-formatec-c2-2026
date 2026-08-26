output "app_bucket_name" {
  description = "Nombre del bucket de prueba."
  value       = aws_s3_bucket.app.bucket
}
