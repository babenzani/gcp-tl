variable "project_id" {
    default = "gcp-test-all-vpc"
}

variable "credentials" {
    default = "/home/arben/terraform/gcp-test-all-vpc-1706a367bad4.json"
}

variable "region" {
    default = "asia-southeast2"
}

variable "vpc-1" {
    default = "terraform-network-1"
}

variable "vpc-2" {
    default = "terraform-network-2"
}

variable "subnet-vpn-1" {
  description = "The subnetwork of the VPN 1."
  type        = string
  default     = "172.99.0.0/16"
}
variable "subnet-vpn-2" {
  description = "The subnetwork of the VPN 2."
  type        = string
  default     = "174.77.0.0/16"
}

variable "os_image_family" {
  description = "The family name of the operating system image."
  type        = string
  default     = "monit"
}

variable "healthcheck_ports" {
  description = "The port numbers used for checking services' health."
  type        = list(string)
  default     = [
    "22",     # SSH
    "80",     # HTTP
    "443",    # HTTPS
    "1234",   # monit	
  ]
}

variable "zone" {
  description = "The location of zonal resources."
  type        = string
  default     = "asia-southeast2-a"
}
