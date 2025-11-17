# Corp - BD Policy
    resource "aci_bridge_domain" "tn-corp-vl500-corp-web-bd" {
    parent_dn = aci_tenant.tn-corp.id
    name      = "tn-corp-vl500_web_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-corp-vrf-PRD.name
    }
    }
    resource "aci_bridge_domain" "tn-corp-vl501-corp-app-bd" {
    parent_dn = aci_tenant.tn-corp.id
    name      = "tn-corp-vl501_app_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-corp-vrf-PRD.name
    }
    }
    resource "aci_bridge_domain" "tn-corp-vl502-corp-db-bd" {
    parent_dn = aci_tenant.tn-corp.id
    name      = "tn-corp-vl502_db_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-corp-vrf-PRD.name
    }
    }

# Infra - BD Policy
    resource "aci_bridge_domain" "tn-infra-vl600-infra-web-bd" {
    parent_dn = aci_tenant.tn-infra.id
    name      = "tn-infra-vl600_web_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-infra-vrf-PRD.name
    }
    }
    resource "aci_bridge_domain" "tn-infra-vl601-infra-app-bd" {
    parent_dn = aci_tenant.tn-infra.id
    name      = "tn-infra-vl601_app_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-infra-vrf-DEV.name
    }
    }
    resource "aci_bridge_domain" "tn-infra-vl602-infra-db-bd" {
    parent_dn = aci_tenant.tn-infra.id
    name      = "tn-infra-vl602_db_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-infra-vrf-UAT.name
    }
    }

# 3PT - BD Policy
    resource "aci_bridge_domain" "tn-3pt-vl700-3pt-web-bd" {
    parent_dn = aci_tenant.tn-3pt.id
    name      = "tn-3pt-vl700_web_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-3pt-vrf-PRD.name
    }
    }
    resource "aci_bridge_domain" "tn-3pt-vl701-3pt-app-bd" {
    parent_dn = aci_tenant.tn-3pt.id
    name      = "tn-3pt-vl701_app_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-3pt-vrf-PRD.name
    }
    }
    resource "aci_bridge_domain" "tn-3pt-vl702-3pt-db-bd" {
    parent_dn = aci_tenant.tn-3pt.id
    name      = "tn-3pt-vl702_db_bd"
    relation_to_vrf = {
        vrf_name   = aci_vrf.tn-3pt-vrf-PRD.name
    }
    }

# Corp - BD L3 Policy
    resource "aci_subnet" "tn-corp-bd-vl500-web-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-corp-vl500-corp-web-bd.id
    description = "subnet"
    ip          = "192.168.1.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }
    resource "aci_subnet" "tn-corp-bd-vl501-app-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-corp-vl501-corp-app-bd.id
    description = "subnet"
    ip          = "192.168.2.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }
    resource "aci_subnet" "tn-corp-bd-vl502-db-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-corp-vl502-corp-db-bd.id
    description = "subnet"
    ip          = "192.168.3.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }

# Infra - BD L3 Policy
    resource "aci_subnet" "tn-infra-bd-vl600-web-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-infra-vl600-infra-web-bd.id
    description = "subnet"
    ip          = "192.168.4.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }
    resource "aci_subnet" "tn-infra-bd-vl601-app-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-infra-vl601-infra-app-bd.id
    description = "subnet"
    ip          = "192.168.5.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }
    resource "aci_subnet" "tn-infra-bd-vl602-db-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-infra-vl602-infra-db-bd.id
    description = "subnet"
    ip          = "192.168.6.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }

# 3PT - BD L3 Policy
    resource "aci_subnet" "tn-3pt-bd-vl700-web-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-3pt-vl700-3pt-web-bd.id
    description = "subnet"
    ip          = "192.168.7.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }
    resource "aci_subnet" "tn-3pt-bd-vl701-app-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-3pt-vl701-3pt-app-bd.id
    description = "subnet"
    ip          = "192.168.8.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }
    resource "aci_subnet" "tn-3pt-bd-vl702-db-bd-subnet" {
    parent_dn   = aci_bridge_domain.tn-3pt-vl702-3pt-db-bd.id
    description = "subnet"
    ip          = "192.168.6.1/24"
    annotation  = "tag_subnet"
    ctrl        = ["unspecified"]
    name_alias  = "alias_subnet"
    preferred   = "no"
    scope       = ["public"]
    virtual     = "no"
    }