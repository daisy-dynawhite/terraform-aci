# Initialise tenants
resource "aci_tenant" "tn-corp" {
  name = "tn-corp"
}

resource "aci_tenant" "tn-infra" {
  name = "tn-infra"
}

resource "aci_tenant" "tn-3pt" {
  name = "tn-3pt"
}