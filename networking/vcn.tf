module "base_vcn" {
  source              = "./Networking/vcn"
  network_compartment = var.network_compartment
  vcn_dns_label       = var.vcn_dns_label
}

module "base_subnet" {
  source              = "./Networking/subnets"
  subnets             = var.subnets
  vcn_id              = module.base_vcn.vcn_id_output
  network_compartment = var.network_compartment

  count = length(var.subnets) > 0 ? 1 : 0
}
