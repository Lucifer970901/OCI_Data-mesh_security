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
esource "oci_objectstorage_object" "product_object" {
    #Required
    bucket = "Product_Bucket"
    content = var.object_content
    namespace = var.object_namespace
    object = var.object_object

    #Optional
    cache_control = var.object_cache_control
    content_disposition = var.object_content_disposition
    content_encoding = var.object_content_encoding
    content_language = var.object_content_language
    content_type = var.object_content_type
    delete_all_object_versions = var.object_delete_all_object_versions
    metadata = var.object_metadata
    storage_tier = var.object_storage_tier
    opc_sse_kms_key_id = var.object_opc_sse_kms_key_id
}
