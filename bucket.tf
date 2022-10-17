resource "oci_objectstorage_bucket" "product_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentProduct.id
    name = "Product_Bucket"
    namespace = var.bucket_namespace
    access_type = "PublicAccess"
}

resource "oci_objectstorage_bucket" "customer_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentCustomer.id
    name = "Customer_Bucket"
    namespace = var.bucket_namespace
    access_type = "PublicAccess"
}

resource "oci_objectstorage_bucket" "sales_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentSales.id
    name = "Sales_Bucket"
    namespace = var.bucket_namespace
    access_type = "PublicAccess"
}

resource "oci_objectstorage_bucket" "dataOps_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentDataOps.id
    name = "DataOps_bucket"
    namespace = var.bucket_namespace
    access_type = "PublicAccess"
}
