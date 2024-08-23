terraform {
  backend "s3" {
    bucket         = "meu-terraform-state-bucket"   # Substitua pelo nome do seu bucket S3
    key            = "path/to/terraform.tfstate"    # Substitua pelo caminho desejado para o state file
    region         = "us-west-2"                    # Substitua pela região do bucket S3
    encrypt        = true                           # Criptografa o state file no S3
    dynamodb_table = "terraform-lock-table"         # Tabela DynamoDB para locking (opcional, mas recomendado)
  }
}