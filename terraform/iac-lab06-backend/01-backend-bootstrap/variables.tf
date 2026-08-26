variable "aws_region" {
  description = "Region AWS para backend."
  type        = string
}

variable "state_bucket_name" {
  description = "Nombre del bucket S3 para guardar state."
  type        = string
}

variable "lock_table_name" {
  description = "Nombre de la tabla DynamoDB para locking."
  type        = string
}
