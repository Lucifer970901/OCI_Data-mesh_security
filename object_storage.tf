#resources bucket
resource "oci_objectstorage_bucket" "product_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentProduct.id
    name = "Product_Bucket"
    namespace = var.bucket_namespace
    access_type = var.bucket_access_type
}

resource "oci_objectstorage_bucket" "customer_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentCustomer.id
    name = "Customer_Bucket"
    namespace = var.bucket_namespace
    access_type = var.bucket_access_type
}

resource "oci_objectstorage_bucket" "sales_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentSales.id
    name = "Sales_Bucket"
    namespace = var.bucket_namespace
    access_type = var.bucket_access_type
}

resource "oci_objectstorage_bucket" "dataOps_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentDataOps.id
    name = "DataOps_bucket"
    namespace = var.bucket_namespace
    access_type = var.bucket_access_type
}

#resources object
resource "oci_objectstorage_object" "product_object" {
    #Required
    bucket =oci_objectstorage_bucket.product_bucket.name
    content = file(var.object_content)
    namespace = var.object_namespace
    object = var.object_object

    #Optional
    storage_tier = var.object_storage_tier
    #content_type = var.object_content_type
    #content_type        = "text/x-python-script"
    content_disposition = "attachment; filename=\"transform_script_data_transform_script_hardcoded.py\""
    content_encoding = filemd5(var.object_content)
}
