terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}
resource "docker_image" "nginx" {
  name = "nginx:latest"
}
resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name  = "nginx_container"
  ports {
    internal = 80
    external = 8080
  }
  volumes {
    container_path = "/usr/share/nginx/html"
    host_path      = "/Users/Munachi/Documents/GitHub/Exam-FullStack/" # Update this path
    read_only      = false
  }
  env = [
    "MY_ENV_VAR=my_value"
  ]
  networks_advanced {
    name    = "my_network"
    aliases = ["nginx_server"]
  }
}


