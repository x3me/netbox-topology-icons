# Netbox topology views plugin additional icons

## Setup

Change the netbox topology views plugin configuration in PLUGIN_CONFIG in your configuration.py
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
        "dns",
        "mikrotik",
        "server",
        "akamai-equipment",
        "muxdemux",
        "speed-test-server",
        "cache-server",
        "kvm",
        "olt",
        "role-unknown",
        "transport-switch",
        "colocated-customer",
        "pdu",
        "route-server",
        "ups"
    ],
    ...
}
```
