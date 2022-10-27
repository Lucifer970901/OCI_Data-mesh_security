#resource block for oci vcn.
resource "oci_core_vcn" "test_vcn" {
    #Required
    provider = oci.region2
    cidr_block = var.vcn_cidr_block
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    display_name = var.vcn_display_name
    dns_label = var.vcn_dns_label

}

#resource block for defining public subnet
resource "oci_core_subnet" "publicsubnet"{
    provider = oci.region2
    dns_label = var.publicSubnet_dns_label
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    vcn_id = oci_core_vcn.test_vcn.id
    display_name = var.display_name_publicsubnet
    cidr_block = var.cidr_block_publicsubnet
    route_table_id = oci_core_route_table.publicRT.id
    security_list_ids = [oci_core_security_list.publicSL.id]
}

#resource block for defining private subnet
resource "oci_core_subnet" "privatesubnet"{
    provider = oci.region2
    dns_label = var.privateSubnet_dns_label
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    vcn_id = oci_core_vcn.test_vcn.id
    display_name = var.display_name_privatesubnet
    cidr_block = var.cidr_block_privatesubnet
    route_table_id = oci_core_route_table.privateRT.id
    security_list_ids = [oci_core_security_list.privateSL.id]
}

#resource block for internet gateway
resource "oci_core_internet_gateway" "test_internet_gateway" {
    provider = oci.region2
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    vcn_id         = oci_core_vcn.test_vcn.id
    display_name = "internet_gateway"
   # route_table_id = oci_core_route_table.publicRT.id
}

resource "oci_core_nat_gateway" "test_nat_gateway" {
    #Required
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    vcn_id = oci_core_vcn.test_vcn.id
    display_name = "nat_gateway"
    #Optional
    #route_table_id = oci_core_route_table.privateRT.id
}

#resource block for route table with route rule for internet gateway
resource "oci_core_route_table" "publicRT" {
    provider = oci.region2
    vcn_id = oci_core_vcn.test_vcn.id
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    display_name = "public_route_table"

  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.test_internet_gateway.id
  }
}

#resource block for route table with route rule for nat gateway
resource "oci_core_route_table" "privateRT" {
    provider = oci.region2
    vcn_id = oci_core_vcn.test_vcn.id
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    display_name = "private_route_table"
  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_nat_gateway.test_nat_gateway.id
  }
}

#resource block for security list
resource "oci_core_security_list" "publicSL" {
    provider = oci.region2
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    vcn_id         = oci_core_vcn.test_vcn.id
    display_name   = "public_security_list"

  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
  }
  ingress_security_rules {
    tcp_options {
      max = "22"
      min = "22"
    }

    protocol = "6"
    source   = "0.0.0.0/0"
  }
  ingress_security_rules {
    icmp_options {
      type = "0"
    }

    protocol = "1"
    source   = "0.0.0.0/0"
  }
  ingress_security_rules {
    icmp_options {
      type = "3"
      code = "4"
    }

    protocol = "1"
    source   = "0.0.0.0/0"
  }
  ingress_security_rules {
    icmp_options {
      type = "8"
    }

    protocol = "1"
    source   = "0.0.0.0/0"
  }
}

#resource block for security list
resource "oci_core_security_list" "privateSL" {
    provider = oci.region2
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    vcn_id         = oci_core_vcn.test_vcn.id
    display_name   = "private_security_list"

  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
  }
  ingress_security_rules {
    tcp_options {
      max = "22"
      min = "22"
    }

    protocol = "6"
    source   = var.vcn_cidr_block
  }
  ingress_security_rules {
    icmp_options {
      type = "0"
    }

    protocol = "1"
    source   = "0.0.0.0/0"
  }
  ingress_security_rules {
    icmp_options {
      type = "3"
      code = "4"
    }

    protocol = "1"
    source   = var.vcn_cidr_block
  }
  ingress_security_rules {
    icmp_options {
      type = "8"
    }

    protocol = "1"
    source   = "0.0.0.0/0"
  }
}

resource "oci_core_network_security_group" "dataflow_network_security_group" {
    #Required
    compartment_id = oci_identity_compartment.compartmentNetworking.id
    vcn_id = oci_core_vcn.test_vcn.id
    #Optional
    display_name = "dataflow_network_security_group"
}

