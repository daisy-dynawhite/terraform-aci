# Corp Application Profiles
  resource "aci_application_profile" "AP-TN-corp-PRD" {
    parent_dn = aci_tenant.tn-corp.id
    name      = "AP-TN-corp-PRD"
  }

  resource "aci_application_profile" "AP-TN-corp-DEV" {
    parent_dn = aci_tenant.tn-corp.id
    name      = "AP-TN-corp-DEV"
  }

  resource "aci_application_profile" "AP-TN-corp-UAT" {
    parent_dn = aci_tenant.tn-corp.id
    name      = "AP-TN-corp-UAT"
  }

# infra Application Profiles
  resource "aci_application_profile" "AP-TN-infra-PRD" {
    parent_dn = aci_tenant.tn-infra.id
    name      = "AP-TN-infra-PRD"
  }

  resource "aci_application_profile" "AP-TN-infra-DEV" {
    parent_dn = aci_tenant.tn-infra.id
    name      = "AP-TN-infra-DEV"
  }

  resource "aci_application_profile" "AP-TN-infra-UAT" {
    parent_dn = aci_tenant.tn-infra.id
    name      = "AP-TN-infra-UAT"
  }

# 3pt Application Profiles
  resource "aci_application_profile" "AP-TN-3pt-PRD" {
    parent_dn = aci_tenant.tn-3pt.id
    name      = "AP-TN-3pt-PRD"
  }

  resource "aci_application_profile" "AP-TN-3pt-DEV" {
    parent_dn = aci_tenant.tn-3pt.id
    name      = "AP-TN-3pt-DEV"
  }

  resource "aci_application_profile" "AP-TN-3pt-UAT" {
    parent_dn = aci_tenant.tn-3pt.id
    name      = "AP-TN-3pt-UAT"
  }
