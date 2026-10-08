
terraform {
  required_version = ">= 1.5.0"
}

variable "ambiente" {
  type    = string
  default = "homologacao"
}

variable "tipo_instancia" {
  type    = string
  default = "t3.small"
}

resource "terraform_data" "servidor" {
  input = {
    nome     = "servidor-app-01"
    ambiente = var.ambiente
    tipo     = var.tipo_instancia
    equipe   = "infraestrutura"
  }
}

output "configuracao_servidor" {
  value = terraform_data.servidor.output
}
