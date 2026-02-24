variable "project_name" {
  type        = string
  default     = "oore-terra"
  description = "Project base name used for Azure resource names."
}

variable "azure_location" {
  type        = string
  default     = "norwayeast"
  description = "Azure region."
}

variable "dns_label" {
  type        = string
  default     = "oore-terraform"
  description = "Public IP DNS label (must be unique per region)."
}

variable "admin_username" {
  type        = string
  default     = "ooreoluwa"
  description = "VM admin username."
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key content (e.g. from ~/.ssh/id_ed25519.pub)."
  sensitive   = true
}

variable "ssh_allowed_cidr" {
  type        = string
  default     = "89.19.88.132/32"
  description = "CIDR allowed to SSH to VM."
}

variable "vm_size" {
  type        = string
  default     = "Standard_B2ats_v2"
  description = "VM size."
}

variable "tags" {
  type = map(string)
  default = {
    project = "network-systems-ca1"
    owner   = "oore"
    env     = "dev"
  }
}