terraform {
  backend "s3" {
    bucket         = "tfstate-formatec-077101398060-yesica"
    key            = "m3-c1/lab06/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tflock-formatec-yesica"
    encrypt        = true
  }
}
