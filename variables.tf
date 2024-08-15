variable "DO_TOKEN" {
  default     = ""
  description = "Digital Ocean access token"
  type        = string
}

variable "SSH_NAME" {
  default     = ""
  description = "Digital Ocean SSH key name"
  type        = string
}

variable "REGION" {
  default     = "nyc1"
  description = "Digital Ocean default region"
  type        = string
}

variable "IMAGE" {
  default     = "ubuntu-22-04-x64"
  description = "OS image for droplet"
  type        = string
}

variable "SIZE" {
  default     = "s-1vcpu-1gb"
  description = "Size of the droplet"
  type        = string
}

variable "DROPLET_NAME" {
  default     = "my-server"
  description = "Droplet name"
  type        = string
}

variable "vms_count" {
  default     = 1
  type        = number
  description = "VMs quantity"
}