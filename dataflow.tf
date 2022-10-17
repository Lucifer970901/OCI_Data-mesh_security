resource "oci_dataflow_application" "test_application" {
    #Required
    compartment_id = oci_identity_compartment.compartmentProduct.id
    display_name = var.application_display_name
    driver_shape = var.application_driver_shape
    executor_shape = var.application_executor_shape
    file_uri = var.application_file_uri
    language = var.application_language
    num_executors = var.application_num_executors
    spark_version = var.application_spark_version

    #Optional
    application_log_config {
        #Required
        log_group_id = oci_logging_log_group.test_log_group.id
        log_id = oci_logging_log.test_log.id
    }
    archive_uri = var.application_archive_uri
    arguments = var.application_arguments
    class_name = var.application_class_name
    configuration = var.application_configuration
    defined_tags = {"Operations.CostCenter"= "42"}
    description = var.application_description
    driver_shape_config {

        #Optional
        memory_in_gbs = var.application_driver_shape_config_memory_in_gbs
        ocpus = var.application_driver_shape_config_ocpus
    }
    execute = var.application_execute
    executor_shape_config {

        #Optional
        memory_in_gbs = var.application_executor_shape_config_memory_in_gbs
        ocpus = var.application_executor_shape_config_ocpus
    }
    freeform_tags = {"Department"= "Finance"}
    logs_bucket_uri = var.application_logs_bucket_uri
    metastore_id = var.metastore_id
    parameters {
        #Required
        name = var.application_parameters_name
        value = var.application_parameters_value
    }
    private_endpoint_id = oci_dataflow_private_endpoint.test_private_endpoint.id
    type = var.application_type
    warehouse_bucket_uri = var.application_warehouse_bucket_uri
}
