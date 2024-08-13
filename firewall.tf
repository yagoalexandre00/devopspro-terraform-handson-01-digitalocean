resource "digitalocean_firewall" "server-firewall" {
  name = "server-firewall"

  droplet_ids = [digitalocean_droplet.my-server.id]
  inbound_rule {
    port_range       = "22"
    protocol         = "tcp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    port_range       = "80"
    protocol         = "tcp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    port_range       = "443"
    protocol         = "tcp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

