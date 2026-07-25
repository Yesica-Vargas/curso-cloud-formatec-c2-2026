variable "aws_region" {
  description = "Region de AWS donde se crean los recursos."
  type        = string
}

variable "lambda_name" {
  description = "Nombre de la funcion Lambda."
  type        = string
}

variable "student_identity" {
  description = "Identidad del alumno o grupo para nomenclatura."
  type        = string
}
