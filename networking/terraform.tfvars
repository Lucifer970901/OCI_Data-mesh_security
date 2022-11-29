tenancy_id="<tenancy_ocid>"
user_id="<user_ocid>"
api_fingerprint="<api_fingreprint>"
api_private_key_path="<private_Key_Path>"
#Parent_compartment_id="<compartment_ocid>"
### Region
region="<region>"
vcn_dns_label="fin"
network_compartment="<compartment_ocid>"
#Subnets
subnets = {
  prod-retail-common-di-prv-subnet = {cidr_block="10.0.0.96/27",type="private",no_public_ip="true"}
  prod-retail-common-di-pub-subnet = {cidr_block="10.0.2.48/28",type="public",no_public_ip="false"}
  prod-retail-common-ggsa-pub-subnet = {cidr_block="10.0.2.32/28",type="public",no_public_ip="false"}
  prod-retail-common-oac-pub-subnet = {cidr_block="10.0.2.16/28",type="public",no_public_ip="false"}
  prod-retail-common-adb-pub-subnet = {cidr_block="10.0.2.0/28",type="public",no_public_ip="false"}
  prod-retail-common-ggsa-prv-subnet = {cidr_block="10.0.0.64/27",type="private",no_public_ip="true"}
  prod-retail-common-oac-prv-subnet = {cidr_block="10.0.0.32/27",type="private",no_public_ip="true"}
  prod-retail-common-adb-prv-subnet = {cidr_block="10.0.0.0/27",type="private",no_public_ip="true"}
  prod-retail-cust-di-pub-subnet = {cidr_block="10.0.15.16/28",type="public",no_public_ip="false"}
  prod-retail-cust-di-prv-subnet = {cidr_block="10.0.14.32/27",type="private",no_public_ip="true"}
  prod-retail-sales-di-pub-subnet = {cidr_block="10.0.13.16/28",type="public",no_public_ip="false"}
  prod-retail-sales-di-prv-subnet = {cidr_block="10.0.12.32/27",type="private",no_public_ip="true"}
  prod-retail-product-di-pub-subnet = {cidr_block="10.0.11.16/28",type="public",no_public_ip="false"}
  prod-retail-product-di-prv-subnet = {cidr_block="10.0.10.32/27",type="private",no_public_ip="true"}
  prod-retail-sales-ds-prv-subnet = {cidr_block="10.0.12.0/27",type="private",no_public_ip="true"}
  prod-retail-cust-ds-prv-subnet = {cidr_block="10.0.14.0/27",type="private",no_public_ip="true"}
  prod-retail-cust-ds-pub-subnet = {cidr_block="10.0.15.0/28",type="public",no_public_ip="false"}
  prod-retail-sales-ds-pub-subnet = {cidr_block="10.0.13.0/28",type="public",no_public_ip="false"}
  prod-retail-product-ds-pub-subnet = {cidr_block="10.0.11.0/28",type="public",no_public_ip="false"}
  prod-retail-product-ds-prv-subnet = {cidr_block="10.0.10.0/27",type="private",no_public_ip="true"}
}

