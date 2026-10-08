
terraform {
  required_providers {
    turbonomic = {
      source  = "IBM/turbonomic"
      version = "2.0.0"
    }
  }
}

provider "turbonomic" {
  hostname = var.turbo_hostname
  username = var.turbo_username
  password = var.turbo_password
}

data "turbonomic_cloud_entity_recommendation" "vm" {
  entity_name = var.vm_name
  entity_type = "VirtualMachine"
}

output "tipo_atual" {
  value = data.turbonomic_cloud_entity_recommendation.vm.current_instance_type
}

output "tipo_recomendado" {
  value = data.turbonomic_cloud_entity_recommendation.vm.new_instance_type
}
