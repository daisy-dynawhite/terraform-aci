# corporate VRFs
resource "aci_vrf" "tn-corp-vrf-PRD" {
  parent_dn = aci_tenant.tn-corp.id
  name      = "tn-corp-vrf-PRD"
}
resource "aci_vrf" "tn-corp-vrf-DEV" {
  parent_dn = aci_tenant.tn-corp.id
  name      = "tn-corp-vrf-DEV"
}
resource "aci_vrf" "tn-corp-vrf-UAT" {
  parent_dn = aci_tenant.tn-corp.id
  name      = "tn-corp-vrf-UAT"
}

# Infra VRFs
resource "aci_vrf" "tn-infra-vrf-PRD" {
  parent_dn = aci_tenant.tn-infra.id
  name      = "tn-infra-vrf-PRD"
}
resource "aci_vrf" "tn-infra-vrf-DEV" {
  parent_dn = aci_tenant.tn-infra.id
  name      = "tn-infra-vrf-DEV"
}
resource "aci_vrf" "tn-infra-vrf-UAT" {
  parent_dn = aci_tenant.tn-infra.id
  name      = "tn-infra-vrf-UAT"
}

# 3PT VRFs
resource "aci_vrf" "tn-3pt-vrf-PRD" {
  parent_dn = aci_tenant.tn-3pt.id
  name      = "tn-3pt-vrf-PRD"
}
resource "aci_vrf" "tn-3pt-vrf-DEV" {
  parent_dn = aci_tenant.tn-3pt.id
  name      = "tn-3pt-vrf-DEV"
}
resource "aci_vrf" "tn-3pt-vrf-UAT" {
  parent_dn = aci_tenant.tn-3pt.id
  name      = "tn-3pt-vrf-UAT"
}