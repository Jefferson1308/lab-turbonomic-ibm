
terraform {
  required_version = ">= 1.5.0"
}

variable "nome" {
  type    = string
  default = "Jefferson"
}

locals {
  mensagem = "Ola, ${var.nome}! Terraform executado com sucesso."
}

output "resultado" {
  value = local.mensagem
}
