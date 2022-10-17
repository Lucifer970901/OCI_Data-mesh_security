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


