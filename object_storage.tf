#resources bucket
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

#resources object
resource "oci_objectstorage_object" "product_object" {
    #Required
    bucket = "Product_Bucket"
    content = var.object_content
    namespace = var.object_namespace
    object = var.object_object

    #Optional
    content_encoding = var.object_content_encoding
    content_type = var.object_content_type
    storage_tier = var.object_storage_tier
}
