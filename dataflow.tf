#resource "oci_dataflow_private_endpoint" "test_private_endpoint" {
    #Required
 #   compartment_id = oci_identity_compartment.compartmentProduct.id
  #  dns_zones = var.private_endpoint_dns_zones
   # subnet_id = oci_core_subnet.publicsubnet.id

    #Optional
    #display_name = var.private_endpoint_display_name
    #max_host_count = var.private_endpoint_max_host_count
    #nsg_ids = var.private_endpoint_nsg_ids
#}

resource "oci_dataflow_application" "product_application" {
    #Required
    provider = oci.region2
    compartment_id = oci_identity_compartment.compartmentProduct.id
    display_name = var.product_application_display_name
    driver_shape = var.application_driver_shape
    executor_shape = var.application_executor_shape
    file_uri = var.product_application_file_uri
    language = var.application_language
    num_executors = var.application_num_executors
    spark_version = var.application_spark_version
    logs_bucket_uri = var.product_application_logs_bucket_uri
    driver_shape_config {

        #Optional
        memory_in_gbs = var.application_driver_shape_config_memory_in_gbs
        ocpus = var.application_driver_shape_config_ocpus
    }
    #execute = var.application_execute
    executor_shape_config {

        #Optional
        memory_in_gbs = var.application_executor_shape_config_memory_in_gbs
        ocpus = var.application_executor_shape_config_ocpus
    }

  
   # private_endpoint_id = oci_dataflow_private_endpoint.test_private_endpoint.id
   # type = var.application_type
   
}

resource "oci_dataflow_application" "customer_application" {
    #Required
    provider = oci.region2
    compartment_id = oci_identity_compartment.compartmentCustomer.id
    display_name = var.customer_application_display_name
    driver_shape = var.application_driver_shape
    executor_shape = var.application_executor_shape
    file_uri = var.customer_application_file_uri
    language = var.application_language
    num_executors = var.application_num_executors
    spark_version = var.application_spark_version
    logs_bucket_uri = var.customer_application_logs_bucket_uri
    driver_shape_config {

        #Optional
        memory_in_gbs = var.application_driver_shape_config_memory_in_gbs
        ocpus = var.application_driver_shape_config_ocpus
    }
    #execute = var.application_execute
    executor_shape_config {

        #Optional
        memory_in_gbs = var.application_executor_shape_config_memory_in_gbs
        ocpus = var.application_executor_shape_config_ocpus
    }

  
   # private_endpoint_id = oci_dataflow_private_endpoint.test_private_endpoint.id
   # type = var.application_type
   
}
resource "oci_dataflow_application" "sales_application" {
    #Required
    provider = oci.region2
    compartment_id = oci_identity_compartment.compartmentSales.id
    display_name = var.sales_application_display_name
    driver_shape = var.application_driver_shape
    executor_shape = var.application_executor_shape
    file_uri = var.sales_application_file_uri
    language = var.application_language
    num_executors = var.application_num_executors
    spark_version = var.application_spark_version
    logs_bucket_uri = var.sales_application_logs_bucket_uri
    driver_shape_config {

        #Optional
        memory_in_gbs = var.application_driver_shape_config_memory_in_gbs
        ocpus = var.application_driver_shape_config_ocpus
    }
    #execute = var.application_execute
    executor_shape_config {

        #Optional
        memory_in_gbs = var.application_executor_shape_config_memory_in_gbs
        ocpus = var.application_executor_shape_config_ocpus
    }

  
   # private_endpoint_id = oci_dataflow_private_endpoint.test_private_endpoint.id
   # type = var.application_type
   
}
