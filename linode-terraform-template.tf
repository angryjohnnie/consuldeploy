# Linode Provider definition
provider "linode" {
  token = "${var.token}"
}

resource "linode_instance" "consul" {
        image = "linode/debian9"
        label = "Consul"
        group = "Consul"
        tags = ["Consul"]
        region = "${var.region}"
        type = "g6-standard-1"
        swap_size = 1024
        authorized_keys = [ "${var.authorized_keys}" ]
        root_pass = "${var.root_pass}"
}

resource "linode_instance" "haproxy" {
        image = "linode/debian9"
        label = "HAProxy1"
        group = "Consul"
        tags = ["Consul"]
        region = "${var.region}"
        type = "g6-standard-1"
        swap_size = 1024
        authorized_keys = [ "${var.authorized_keys}" ]
        root_pass = "${var.root_pass}"
}

resource "linode_instance" "nginx1" {
        image = "linode/debian9"
        label = "nginx1"
        group = "Consul"
        tags = ["Consul"]
        region = "${var.region}"
        type = "g6-standard-1"
        swap_size = 1024
        authorized_keys = [ "${var.authorized_keys}" ]
        root_pass = "${var.root_pass}"
}

resource "linode_instance" "nginx2" {
        image = "linode/debian9"
        label = "nginx2"
        group = "Consul"
        tags = ["Consul"]
        region = "${var.region}"
        type = "g6-standard-1"
        swap_size = 1024
        authorized_keys = [ "${var.authorized_keys}" ]
        root_pass = "${var.root_pass}"
}

resource "linode_instance" "nginx3" {
        image = "linode/debian9"
        label = "nginx3"
        group = "Consul"
        tags = ["Consul"]
        region = "${var.region}"
        type = "g6-standard-1"
        swap_size = 1024
        authorized_keys = [ "${var.authorized_keys}" ]
        root_pass = "${var.root_pass}"
}
