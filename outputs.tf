output "server_ipv4" {
  value = "${digitalocean_droplet.my-server.ipv4_address}"
}

output "server_price_hourly" {
  value = "${digitalocean_droplet.my-server.price_hourly}"
}
