terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.11.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

# 1. Define the dynamic list (The Requirements)
variable "container_config" {
  type = list(object({
    name = string
    port = number
  }))
  default = [
    { name = "web1", port = 8081 },
    { name = "web2", port = 8082 },
    { name = "web3", port = 8083 }
  ]
}

# 2. Use a loop to call the module (The magic part)
module "dynamic_containers" {
  source   = "./modules/nginx_container"
  for_each = { for c in var.container_config : c.name => c }

  container_name = each.value.name
  container_port = each.value.port
  image_name     = "nginx:latest"
}

# 3. Output all URLs at once (The Result)
output "container_urls" {
  value = [for c in var.container_config : "http://localhost:${c.port}"]
}