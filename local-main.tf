terraform {
  required_providers {
    aci = {
      source = "ciscodevnet/aci"
    }
  }
}

provider "aci" {
  username = "admin"
  password = "DaisyDev"
  url      = "https://192.168.1.105"
  insecure = true
}