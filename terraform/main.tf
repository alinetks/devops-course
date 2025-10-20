terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "api_image" {
  name         = "hello-devops-api"
  build {
    context    = "${path.module}/../api"
  }
}

resource "docker_container" "api_container" {
  name  = "hello-devops-api"
  image = docker_image.api_image.name
  ports {
    internal = 8000
    external = 8000
  }
}
