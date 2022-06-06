# Netbox topology views plugin additional icons

Override and icons to the [netbox topology](https://github.com/mattieserver/netbox-topology-views) plugin

## Setup

1. Add the plugin before the netbox topology views plugin

```python
PLUGINS = [..., "netbox_topology_icons", "netbox_topology_views"]
```

2. Change the netbox topology views plugin configuration in PLUGIN_CONFIG in your configuration.py
   to point to the correct static file directory

```python
PLUGINS_CONFIG = {
    ...,
    "netbox_topology_views": {
        ...,
        "static_image_directory": "netbox_topology_icons"
    }
}
```
