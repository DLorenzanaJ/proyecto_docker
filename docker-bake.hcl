# docker-bake.hcl
group "default" {
  targets = ["app"]
}

target "app" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["app:latest"]
}

target "validate" {
  inherits = ["app"]
  tags = []
}
