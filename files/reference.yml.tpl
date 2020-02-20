---
# ==============================================================================
#  For reference: All possible settings
#    See https://nomadproject.io/docs/configuration/
# ==============================================================================

config_all:

  acl: nil

  addresses:
    http: 4646
    rpc:
    serf:

  advertise:
    http: 4646
    rpc:
    serf:

  bind_addr: "0.0.0.0"

  client:

  consul:

  datacenter: "dc1"
  data_dir: ""
  disable_anonymous_signature: false
  disable_update_check: false
  enable_debug: false
  enable_syslog: false

  http_api_response_headers: nil

  leave_on_interrupt: false
  leave_on_terminate: false

  limits:
    https_handshake_timeout: "5s"

  log_level: "INFO"
  log_json: false
