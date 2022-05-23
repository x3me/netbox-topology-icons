from extras.plugins import PluginConfig


class TopoIconsConfig(PluginConfig):
    name = "netbox_topology_icons"
    verbose_name = "Topology icons"
    description = "Plugin to add icons to topology plugin"
    version = "0.1.0"
    author = "Victor Gorchilov"
    author_email = "victor.gorchilov@x3me.net"
    base_url = ""
    required_settings = []
    default_settings = {}


config = TopoIconsConfig
