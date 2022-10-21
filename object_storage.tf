data "oci_objectstorage_namespace" "ns" {
  #Optional
  compartment_id = oci_identity_compartment.compartmentProduct.id
}

#resources bucket
resource "oci_objectstorage_bucket" "product_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentProduct.id
    name = "Product_Bucket"
    namespace = data.oci_objectstorage_namespace.ns.namespace
    access_type = var.bucket_access_type
}
resource "time_sleep" "wait_60_seconds" {
  depends_on = [oci_objectstorage_bucket.product_bucket]

  create_duration = "60s"
}

resource "oci_objectstorage_bucket" "customer_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentCustomer.id
    name = "Customer_Bucket"
    namespace = data.oci_objectstorage_namespace.ns.namespace
    access_type = var.bucket_access_type
}
resource "time_sleep" "wait_60_seconds" {
  depends_on = [oci_objectstorage_bucket.customer_bucket]

  create_duration = "60s"
}

resource "oci_objectstorage_bucket" "sales_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentSales.id
    name = "Sales_Bucket"
    namespace = data.oci_objectstorage_namespace.ns.namespace
    access_type = var.bucket_access_type
}
resource "time_sleep" "wait_60_seconds" {
  depends_on = [oci_objectstorage_bucket.sales_bucket]

  create_duration = "60s"
}

resource "oci_objectstorage_bucket" "dataOps_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentDataOps.id
    name = "DataOps_bucket"
    namespace = var.bucket_namespace
    access_type = var.bucket_access_type
}

#resources product object
resource "oci_objectstorage_object" "product_object" {
    #Required
    bucket =oci_objectstorage_bucket.product_bucket.name
    content = file(var.object_content)
    namespace = data.oci_objectstorage_namespace.ns.namespace
    object = var.object_object

    #Optional
    storage_tier = var.object_storage_tier
    content_disposition = "attachment; filename=\"data_transform.py\""
    content_encoding = filemd5(var.object_content)
}

#resources customer object
resource "oci_objectstorage_object" "customer_object" {
    #Required
    bucket =oci_objectstorage_bucket.customer_bucket.name
    content = file(var.object_content)
    namespace = data.oci_objectstorage_namespace.ns.namespace
    object = var.object_object

    #Optional
    storage_tier = var.object_storage_tier
    content_disposition = "attachment; filename=\"data_transform.py\""
    content_encoding = filemd5(var.object_content)
}

#resources sales object
resource "oci_objectstorage_object" "sales_object" {
    #Required
    bucket =oci_objectstorage_bucket.sales_bucket.name
    content = file(var.object_content)
    namespace = data.oci_objectstorage_namespace.ns.namespace
    object = var.object_object

    #Optional
    storage_tier = var.object_storage_tier
    content_disposition = "attachment; filename=\"data_transform.py\""
    content_encoding = filemd5(var.object_content)
}
