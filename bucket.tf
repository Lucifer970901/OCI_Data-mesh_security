resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentProduct.id
    name = var.bucket_name
    namespace = var.bucket_namespace

    #Optional
    access_type = var.bucket_access_type
    auto_tiering = var.bucket_auto_tiering
    metadata = var.bucket_metadata
    object_events_enabled = var.bucket_object_events_enabled
    storage_tier = var.bucket_storage_tier
    retention_rules {
        display_name = var.retention_rule_display_name
        duration {
            #Required
            time_amount = var.retention_rule_duration_time_amount
            time_unit = var.retention_rule_duration_time_unit
        }
        time_rule_locked = var.retention_rule_time_rule_locked
    }
    versioning = var.bucket_versioning
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentCustomer.id
    name = var.bucket_name
    namespace = var.bucket_namespace

    #Optional
    access_type = var.bucket_access_type
    auto_tiering = var.bucket_auto_tiering
    metadata = var.bucket_metadata
    object_events_enabled = var.bucket_object_events_enabled
    storage_tier = var.bucket_storage_tier
    retention_rules {
        display_name = var.retention_rule_display_name
        duration {
            #Required
            time_amount = var.retention_rule_duration_time_amount
            time_unit = var.retention_rule_duration_time_unit
        }
        time_rule_locked = var.retention_rule_time_rule_locked
    }
    versioning = var.bucket_versioning
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentSales.id
    name = var.bucket_name
    namespace = var.bucket_namespace

    #Optional
    access_type = var.bucket_access_type
    auto_tiering = var.bucket_auto_tiering
    metadata = var.bucket_metadata
    object_events_enabled = var.bucket_object_events_enabled
    storage_tier = var.bucket_storage_tier
    retention_rules {
        display_name = var.retention_rule_display_name
        duration {
            #Required
            time_amount = var.retention_rule_duration_time_amount
            time_unit = var.retention_rule_duration_time_unit
        }
        time_rule_locked = var.retention_rule_time_rule_locked
    }
    versioning = var.bucket_versioning
}

resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = oci_identity_compartment.compartmentDataOps.id
    name = var.bucket_name
    namespace = var.bucket_namespace

    #Optional
    access_type = var.bucket_access_type
    auto_tiering = var.bucket_auto_tiering
    metadata = var.bucket_metadata
    object_events_enabled = var.bucket_object_events_enabled
    storage_tier = var.bucket_storage_tier
    retention_rules {
        display_name = var.retention_rule_display_name
        duration {
            #Required
            time_amount = var.retention_rule_duration_time_amount
            time_unit = var.retention_rule_duration_time_unit
        }
        time_rule_locked = var.retention_rule_time_rule_locked
    }
    versioning = var.bucket_versioning
}
