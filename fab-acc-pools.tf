resource "aci_vlan_pool" "vlp-corp" {
  name  = "vlp-corp"
  alloc_mode  = "static"
}
resource "aci_vlan_pool" "vlp-infra" {
  name  = "vlp-infra"
  alloc_mode  = "static"
}
resource "aci_vlan_pool" "vlp-3pt" {
  name  = "vlp-3pt"
  alloc_mode  = "static"
}