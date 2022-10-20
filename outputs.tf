output "object_data" {
  value = <<EOF
  content = ${data.oci_objectstorage_object.product_object.content}
  content-length = ${data.oci_objectstorage_object.product_object.content_length}
  content-type = ${data.oci_objectstorage_object.product_object.content_type}
EOF

}
