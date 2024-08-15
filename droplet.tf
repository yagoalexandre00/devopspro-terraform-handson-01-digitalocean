resource "digitalocean_droplet" "my-server" {
  name     = "${var.DROPLET_NAME}-${count.index}"
  size     = var.SIZE
  region   = var.REGION
  image    = var.IMAGE
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  count = 1
}
