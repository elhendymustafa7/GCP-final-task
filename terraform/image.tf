
#build dockerfile
resource "docker_image" "image" {
  name = "test"
  build {
    context = "."
  }
}
