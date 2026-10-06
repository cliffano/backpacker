packer {
  required_plugins {
    docker = {
      version = ">= 1.1.4"
      source  = "github.com/hashicorp/docker"
    }
    ansible = {
      version = ">= 1.1.6"
      source  = "github.com/hashicorp/ansible"
    }
  }
}

variable "docker_source" {
  type    = string
  default = ""
}

variable "version" {
  type    = string
  default = "x.x.x"
}

variable "arch" {
  type    = string
  default = "amd64"
}

source "docker" "studio" {
  image    = var.docker_source
  platform = "linux/${var.arch}"
  commit   = true
  run_command = [
    "-d",
    "-i",
    "-t",
    "{{.Image}}",
    "/bin/bash",
  ]
  changes = [
    "ENV LANG en_US.UTF-8",
    "ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    "ENTRYPOINT [\"backpackerexample\"]",
    "CMD []"
  ]
}

build {
  sources = [
    "source.docker.studio"
  ]

  name = "studio"

  provisioner "shell" {
    inline = [
      "mkdir -p /tmp/backpackerexample"
    ]
  }

  provisioner "shell" {
    script = "provisioners/shell/init.sh"
  }

  provisioner "ansible-local" {
    playbook_file = "provisioners/ansible/backpackerexample.yaml"
  }

  provisioner "shell" {
    script = "provisioners/shell/info.sh"
  }

  post-processor "docker-tag" {
    repository = "cliffano/backpackerexample"
    tags        = [
      "latest",
      "${var.version}-${var.arch}"
    ]
  }
}
