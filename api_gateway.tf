resource "oci_apigateway_gateway" "test_gateway" {
  #Required
  provider = oci.region2
  compartment_id = oci_identity_compartment.compartmentSecurity.id
  endpoint_type  = var.gateway_endpoint_type
  subnet_id      = oci_core_subnet.publicsubnet.id
}

resource "oci_apigateway_deployment" "test_deployment" {
  #Required
  provider = oci.region2
  compartment_id = oci_identity_compartment.compartmentSecurity.id
  gateway_id     = oci_apigateway_gateway.test_gateway.id
  path_prefix    = var.deployment_path_prefix

  specification {
    routes {
      #Required
      backend {
        #Required
        type = var.deployment_specification_routes_backend_type
        url  = var.deployment_specification_routes_backend_url
      }
      path = var.deployment_specification_routes_path
      methods = var.deployment_specification_routes_methods
    }
  }
}
