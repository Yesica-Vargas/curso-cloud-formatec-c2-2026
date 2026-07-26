variable "aws_region" {
  description = "Region AWS para trabajar."
  type        = string
}

variable "project" {
  description = "Nombre corto del proyecto."
  type        = string
}

variable "environment" {
  description = "Ambiente de trabajo."
  type        = string
}

variable "student_identity" {
  description = "Identidad del alumno o grupo para nomenclatura."
  type        = string
}