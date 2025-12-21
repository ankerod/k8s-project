resource "digitalocean_project" "k8s_project" {
  name        = "k8s-project"
  description = "Kubernetes project for deploying applications"
  purpose     = "Web Application Hosting"
  environment = "Development"
  resources   = [digitalocean_kubernetes_cluster.k8s_project.urn]
}

resource "digitalocean_kubernetes_cluster" "k8s_project" {
  name    = "k8s-project-cluster"
  region  = var.do_region
  version = "1.34.1-do.2"

  node_pool {
    name       = "default-pool"
    size       = "s-2vcpu-4gb"
    node_count = 3
  }
}
