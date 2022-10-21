resource "oci_logging_log_group" "product_log_group" {
    #Required
    compartment_id = oci_identity_compartment.compartmentProduct.id
    display_name = var.log_group_display_name
}

resource "oci_logging_log" "test_log" {
    #Required
    display_name = "Product_log"
    log_group_id = oci_logging_log_group.product_log_group.id
    log_type = var.log_log_type

    #Optional
    #configuration {
        #Required
    #    source {
            #Required
    #        category = var.log_configuration_source_category
     #       resource = var.log_configuration_source_resource
      #      service = var.log_configuration_source_service
       #     source_type = "ociservice"
        #}

        #Optional
       # compartment_id = oci_identity_compartment.compartmentProduct.id
 #   }
    is_enabled = "yes"
    retention_duration = "60"
}
