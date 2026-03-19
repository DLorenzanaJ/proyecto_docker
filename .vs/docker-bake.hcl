# docker-bake.hcl para Nexxo
group "default" {
  targets = ["app"]
}

target "app" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["nexxo-app:latest"]
}

# Target específico para validación
target "validate" {
  inherits = ["app"]
  call = "check"
  tags = []
}