
variable "turbo_hostname" {
  type = string
}

variable "turbo_username" {
  type = string
}

variable "turbo_password" {
  type      = string
  sensitive = true
}

variable "vm_name" {
  type = string
}
