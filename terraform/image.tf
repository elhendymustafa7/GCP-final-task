resource "docker_registry_image" "test" {
  name          = docker_image.image.name
  keep_remotely = true
}

resource "docker_image" "image" {
  name = "test"
  build {
    context = "."
  }
}
