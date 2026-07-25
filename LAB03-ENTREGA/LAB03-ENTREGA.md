# LAB03 - Outputs, State y Cambios Controlados

## Proyecto
Terraform - AWS Lambda

## Objetivo

Comprender cómo Terraform administra infraestructura mediante archivos de configuración, state y comparación de cambios.

---

# 1. Terraform Output

Comando:

```bash
terraform output
Resultado:

lambda_function_arn = "arn:aws:lambda:us-east-1:077101398060:function:lambda-lab02-yesica"
lambda_function_name = "lambda-lab02-yesica"
2. Recursos administrados por Terraform

Comando:

terraform state list

Resultado:

data.archive_file.lambda_zip
aws_iam_role.lambda_role
aws_iam_role_policy_attachment.lambda_basic_logs
aws_lambda_function.hola
3. Cambio de código Lambda

Archivo modificado:

function/lambda_function.py

Cambio realizado:

Antes:

"hola desde lambda"

Después:

"hola desde lambda - cambio controlado"

Terraform detectó el cambio mediante:

source_code_hash

Resultado del plan:

Plan: 0 to add, 1 to change, 0 to destroy.
4. Aplicación del cambio

Comando:

terraform apply

Resultado:

Apply complete! Resources:
0 added, 1 changed, 0 destroyed.
5. Cambio de variable

Archivo:

terraform.tfvars

Cambio:

student_identity = "yesica"

a:

student_identity = "yesica-2"

Terraform detectó:

STUDENT_INITIALS = yesica -> yesica-2

La Lambda fue actualizada sin reemplazar recursos.

6. Validación Lambda

Respuesta final:

{
  "statusCode": 200,
  "body": "hola desde lambda - cambio controlado"
}
7. Estado final

Comando:

terraform plan

Resultado:

No changes. Your infrastructure matches the configuration.
8. Limpieza

Comando:

terraform destroy

Resultado:

Infraestructura eliminada correctamente.

Validación:

terraform state list

Resultado:

Sin recursos administrados.

Conclusión

Terraform permitió crear, modificar, validar y eliminar infraestructura de forma controlada.

Los cambios fueron detectados comparando:

archivos .tf
terraform.tfstate
recursos reales en AWS