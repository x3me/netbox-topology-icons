# Netbox topology views plugin additional icons

Override and icons to the [netbox topology](https://github.com/mattieserver/netbox-topology-views) plugin

## Setup

1. Add the plugin before the netbox topology views plugin

```python
PLUGINS = [..., "netbox_topology_icons", "netbox_topology_views"]
```

2. Change the netbox topology views plugin configuration in PLUGIN_CONFIG in your configuration.py
   to include the necessary device roles

**Excitel**

```python
"netbox_topology_views": {
    "device_img": [
        "access",
        "core",
        "distribution",
        "last-mile",
        "power",
        "private-cloud",
        "systems-and-servers",
    ],
    ...
}
```

**x3me**

```python
"netbox_topology_views": {
    "device_img": [
        "access-switch",
        "akamai-equipment",
        "cache-server",
        "colocated-customer",
        "dns",
        "kvm",
        "mikrotik",
        "muxdemux",
        "olt",
        "pdu",
        "role-unknown",
        "route-server",
        "server",
        "speed-test-server",
        "transport-switch",
        "ups"
    ],
    ...
}
```
