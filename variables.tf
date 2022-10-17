#configuration variables

variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "region2" {}

#declare oci providers

provider "oci"{
    alias  = "home"
    tenancy_ocid = var.tenancy_ocid
    user_ocid = var.user_ocid
    region = var.region
    private_key_path = var.private_key_path
    fingerprint = var.fingerprint
}

provider "oci" {
  alias            = "region2"
  tenancy_ocid     = var.tenancy_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region2
  user_ocid        = var.user_ocid
}

variable "vcn_cidr_block" {
  description = "provide the valid IPV4 cidr block for vcn"
  default     = "192.168.0.0/16"
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet. "
  default     = "vcn"
}

variable "vcn_display_name" {
  description = "provide a display name for vcn"
  default     = "retail-sydney-vcn"
}

#variables to define the public subnet
variable "cidr_block_publicsubnet"{
description = "note that the cidr block for the subnet must be smaller and part of the vcn cidr block"
default = "192.168.1.0/24"
}

variable "publicSubnet_dns_label" {
description = "A DNS label prefix for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet. "
  default     = "publicsubnet"
}
variable "display_name_publicsubnet"{
description = "privide a displayname for public subnet"
default     = "publicsubnet"
}

