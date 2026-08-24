cat > lambda_function.py <<'EOF'
import json

def lambda_handler(event, context):
    return {
        "statusCode": 200,
        "message": "Hola desde Lambda creada con Terraform",
        "input": event
    }
