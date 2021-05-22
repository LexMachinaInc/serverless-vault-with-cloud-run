default_max_request_duration = "90s"
disable_mlock                = false
disable_clustering           = true
ui                           = true
max_lease_ttl                = "120h"
default_lease_ttl            = "24h"
api_addr                     = "https://vault.deuslex.net"

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

seal "gcpckms" {
  key_ring   = "vault_keys"
  crypto_key = "vault-prod"
  region     = "global"
}

storage "gcs" {
  ha_enabled = "false"
}
