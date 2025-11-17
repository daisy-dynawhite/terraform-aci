# Corp - EPG Policy
    resource "aci_application_epg" "tn-corp-vl500-web-epg" {
    parent_dn = aci_application_profile.AP-TN-corp-PRD.id
    name      = "tn-corp-vl500-web-epg"
    relation_to_bridge_domain = {
        bridge_domain_name = aci_bridge_domain.tn-corp-vl500-corp-web-bd.name
    }
    }
    resource "aci_application_epg" "tn-corp-vl501-app-epg" {
    parent_dn = aci_application_profile.AP-TN-corp-PRD.id
    name      = "tn-corp-vl501-app-epg"
    relation_to_bridge_domain = {
        bridge_domain_name = aci_bridge_domain.tn-corp-vl501-corp-app-bd.name
    }
    }
    resource "aci_application_epg" "tn-corp-vl502-app-epg" {
    parent_dn = aci_application_profile.AP-TN-corp-PRD.id
    name      = "tn-corp-vl502-app-epg"
    relation_to_bridge_domain = {
        bridge_domain_name = aci_bridge_domain.tn-corp-vl502-corp-db-bd.name
    }
    }

# Infra - EPG Policy
    resource "aci_application_epg" "tn-infra-vl600-web-epg" {
    parent_dn = aci_application_profile.AP-TN-infra-PRD.id
    name      = "tn-infra-vl600-web-epg"
    relation_to_bridge_domain = {
        bridge_domain_name = aci_bridge_domain.tn-infra-vl600-infra-web-bd.name
    }
    }
    resource "aci_application_epg" "tn-infra-vl601-app-epg" {
    parent_dn = aci_application_profile.AP-TN-infra-DEV.id
    name      = "tn-infra-vl601-app-epg"
    relation_to_bridge_domain = {
        bridge_domain_name = aci_bridge_domain.tn-infra-vl601-infra-app-bd.name
    }
    }
    resource "aci_application_epg" "tn-infra-vl602-db-epg" {
    parent_dn = aci_application_profile.AP-TN-infra-UAT.id
    name      = "tn-infra-vl602-db-epg"
    relation_to_bridge_domain = {
        bridge_domain_name = aci_bridge_domain.tn-infra-vl602-infra-db-bd.name
    }
    }

# 3PT - EPG Policy
resource "aci_application_epg" "tn-3pt-vl700-web-epg" {
  parent_dn = aci_application_profile.AP-TN-3pt-PRD.id
  name      = "tn-3pt-vl700-web-epg"
  relation_to_bridge_domain = {
    bridge_domain_name = aci_bridge_domain.tn-3pt-vl700-3pt-web-bd.name
  }
}
resource "aci_application_epg" "tn-3pt-vl701-app-epg" {
  parent_dn = aci_application_profile.AP-TN-3pt-PRD.id
  name      = "tn-3pt-vl701-app-epg"
  relation_to_bridge_domain = {
    bridge_domain_name = aci_bridge_domain.tn-3pt-vl701-3pt-app-bd.name
  }
}
resource "aci_application_epg" "tn-3pt-vl702-db-epg" {
  parent_dn = aci_application_profile.AP-TN-3pt-PRD.id
  name      = "tn-3pt-vl702-db-epg"
  relation_to_bridge_domain = {
    bridge_domain_name = aci_bridge_domain.tn-3pt-vl702-3pt-db-bd.name
  }
}


