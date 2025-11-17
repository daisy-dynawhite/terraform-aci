resource "aci_physical_domain" "phd-corp" {
  name  = "phd-corp"
}
resource "aci_physical_domain" "phd-infra" {
  name  = "phd-infra"
}
resource "aci_physical_domain" "phd-3pt" {
  name  = "phd-3pt"
}