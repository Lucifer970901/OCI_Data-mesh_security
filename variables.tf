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
# Network variables
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

#bucket variables

variable "bucket_namespace"{
description = "namespace of the bucket"
default = "apaccpt03"
}

variable "bucket_access_type"{
default = "NoPublicAccess"
}

#object variables

variable "object_content"{
default = "data/transform_script_data_transform_script_hardcoded.py"
}

variable "object_namespace"{
 default = "apaccpt03"
}

variable "object_object"{
default = "dataflow_object.py"
}

variable "object_content_type"{
default = "text/x-python-script"
}

variable "object_storage_tier"{
    default = "standard"
}

# dataflow application variables
variable "private_endpoint_display_name"{
default = "dataflow_private_endpoint"
}

variable "private_endpoint_max_host_count"{
default = "256"
}

variable "private_endpoint_nsg_ids"{
default = ""
}

variable "application_display_name" {
description = "data flow application name"
 default = "Product_application"
}
variable "application_file_uri"{
default = "oci://Product_Bucket@apaccpt03/dataflow_object.py"
}

variable "application_driver_shape"{
default = "VM.Standard.E4.Flex"
}


variable "application_executor_shape"{
default = "VM.Standard.E4.Flex"
}

variable "application_language"{
default = "python"
}

variable "application_num_executors"{
default = "1"
}

variable "application_spark_version"{
default = "3.2.1"
}


variable "application_driver_shape_config_memory_in_gbs"{
default = "16"
}

variable "application_driver_shape_config_ocpus"{
default = "1"
}

variable "application_executor_shape_config_memory_in_gbs"{
default = "16"
}

variable "application_executor_shape_config_ocpus"{
default = "1"
}
