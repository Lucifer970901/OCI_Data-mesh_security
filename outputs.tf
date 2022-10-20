output "object_data" {
  value = <<EOF
  content = ${oci_objectstorage_object.product_object.content}
  content-length = ${oci_objectstorage_object.product_object.content_length}
  content-type = ${oci_objectstorage_object.product_object.content_type}
EOF

}
