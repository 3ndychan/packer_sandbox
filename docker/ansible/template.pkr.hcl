variable "base_image_uri" {
  type    = string
  default = ""
}

variable "docker_repo" {
type    = strin
default = ""
}

variable "login_username" {
  type    = string
  default = "username"
}

variable "login_password" {
  type    = string
  default = "password"
}

source "docker" "ubuntu_focal" {
  commit = true
  image  = "${var.base_image_uri}"
}

build {
  name = "base-build"
  sources = [
    "source.docker.ubuntu_focal"
  ]

  provisioner "shell" {
    inline = [
      "apt clean all", 
      "apt update", 
      "apt -y install ansible"
    ]
  }

  provisioner "ansible-local" {
    playbook_file   = "./playbook.yml"
    extra_arguments = ["--extra-vars", "\"pizza_toppings=${var.base_image_uri}\""]
  }
  post-processors {
    post-processor "docker-tag" {
      repository = "var.docker_repo"
      tags       = ["ubuntu-focal", "testydoo"]
      only       = ["docker.ubuntu_focal"]
    }
    post-processors "docker-push" {
      login=true
      login_username = var.docker_username
      login_password = var.docker_password
      
  }
}
