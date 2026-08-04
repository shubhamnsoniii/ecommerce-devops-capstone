resource "kubernetes_namespace" "ecommerce" {
  metadata {
    name = var.namespace
  }
}