# Nomad

This is an ansible role for managing nomad installations.
It does the following tasks:
- Download and validate precompiled binary
- Add unit/service definition (systemd)
- Stream configuration based on provided parameters into json-configuration
- Optional: manage firewalld, selinux, cni-plugins
  (incl. configuring kernel tunables)

## Requirements

None

## Role Variables

#### version (default: 0.10.4)

Sets the version to download & enable

#### force_install (default: false)

Download & unpack binary even if the defined version already exists

#### config_overrides (default: {})

Overrides any default settings for the application. These are written to disk on the host. Example:

```yaml
config_overrides:
  server:
    enabled: true
    bootstrap_expect: 1
```

#### path_overrides (default: {})
Default paths to use for files

#### cni_overrides (default: {})
Override default cni settings
```yaml
configure_cni: true

cni_overrides:
  set_tunables: false
```

#### configure_firewalld (default: false)
Add (default) ports to firewalld

#### configure_selinux (default: false)
Set SELinux to permissive mode

...
## Dependencies

None

## Example Playbook (TODO)
Install a single server instance

    - hosts: consul
      gather_facts: false

      pre_tasks:
        - name: Ansible and docker requirements
          become: true
          package:
            name:
              - iproute
            state: present

      tasks:
        - include_role:
            name: consul
          vars:
            config_overrides:
              client_addr: "0.0.0.0"
              server: true
              bootstrap_expect: 1
              ui: true
            configure_dnsmasq: true

## License

MIT

## Author Information

N/A
