resource "ah_cloud_server" "example" {
  name       = "u20-ansible-nginx"
  datacenter = var.ah_dc
  image      = var.ah_image_type
  product    = var.ah_machine_type
  ssh_keys   = ["YOUR_FINGERPRINT"]
 }
