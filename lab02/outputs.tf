output "lambda_function_name" {
  description = "Nombre de la funcion Lambda creada"
  value       = aws_lambda_function.lab.function_name
}

output "lambda_function_arn" {
  description = "ARN de la funcion Lambda creada"
  value       = aws_lambda_function.lab.arn
}