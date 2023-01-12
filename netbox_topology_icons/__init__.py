from extras.plugins import PluginConfig

__version__ = "0.2.0"

class TopoIconsConfig(PluginConfig):
    name = "netbox_topology_icons"
    verbose_name = "Topology icons"
    description = "Plugin to add icons to topology plugin"
    version = __version__
    author = "Victor Gorchilov"
    author_email = "victor.gorchilov@x3me.net"
    base_url = ""
    required_settings = []
    default_settings = {}


config = TopoIconsConfig
