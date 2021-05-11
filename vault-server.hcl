default_max_request_duration = "90s"
disable_mlock                = false
disable_clustering           = true
ui                           = true
max_lease_ttl                = "120h"
default_lease_ttl            = "24h"

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

seal "gcpckms" {
  key_ring   = "vault_keys"
  crypto_key = "vault-testing-0"
  region     = "global"
}

storage "gcs" {
  ha_enabled = "false"
}
