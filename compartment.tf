#resource block for compartment retail (main compartment)
resource "oci_identity_compartment" "compartmentRetail" {
  provider       = oci.home
  compartment_id = var.compartment_ocid
  description    = "create a comparment within your main compartment"
  name           = "Retail"
  #region  = "${var.home_region}"
}

resource "time_sleep" "wait_60_seconds" {
  depends_on = [oci_identity_compartment.compartmentRetail]

  create_duration = "60s"
}

#resource block for compartment retail 
resource "oci_identity_compartment" "compartmentProduct" {
  provider       = oci.home
  compartment_id = oci_idenity_compartment.compartmentRetail.id
  description    = "create a comparment within your Retail compartment"
  name           = "Product-Domain"
  #region  = "${var.home_region}"
}

#resource block for compartment retail (main compartment)
resource "oci_identity_compartment" "compartmentCustomer" {
  provider       = oci.home
  compartment_id = oci_idenity_compartment.compartmentRetail.id
  description    = "create a comparment within your Retail compartment"
  name           = "Customer-Domain"
  #region  = "${var.home_region}"
}

#resource block for compartment retail (main compartment)
resource "oci_identity_compartment" "compartmentSales" {
  provider       = oci.home
  compartment_id = oci_idenity_compartment.compartmentRetail.id
  description    = "create a comparment within your Retail compartment"
  name           = "Sales-Domain"
  #region  = "${var.home_region}"
}

#resource block for compartment retail (main compartment)
resource "oci_identity_compartment" "compartmentDataOps" {
  provider       = oci.home
  compartment_id = oci_idenity_compartment.compartmentRetail.id
  description    = "create a comparment within your Retail compartment"
  name           = "DataOps-Shared"
  #region  = "${var.home_region}"
}

#resource block for compartment retail (main compartment)
resource "oci_identity_compartment" "compartmentDatabase" {
  provider       = oci.home
  compartment_id = oci_idenity_compartment.compartmentRetail.id
  description    = "create a comparment within your Retail compartment"
  name           = "Database"
  #region  = "${var.home_region}"
}

#resource block for compartment retail (main compartment)
resource "oci_identity_compartment" "compartmentNetworking" {
  provider       = oci.home
  compartment_id = oci_idenity_compartment.compartmentRetail.id
  description    = "create a comparment within your Retail compartment"
  name           = "Networking"
  #region  = "${var.home_region}"
}

#resource block for compartment retail (main compartment)
resource "oci_identity_compartment" "compartmentSecurity" {
  provider       = oci.home
  compartment_id = oci_idenity_compartment.compartmentRetail.id
  description    = "create a comparment within your Retail compartment"
  name           = "Security"
  #region  = "${var.home_region}"
}

