#Netwroking Variables 

variable "vcn_cidr_blocks" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  default     = ["10.0.0.0/16"]
  type        = list(string)
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN"
  type        = string
}

variable "vcn_name" {
  type        = string
  default     = "retail-sydney-vcn"
}


variable "network_compartment" {
  description = "network compartment"
  type        = string
}


variable "subnets" {
  type    = any
  default = {}
}
