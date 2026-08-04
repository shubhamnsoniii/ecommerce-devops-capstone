output "namespace" {
  value = kubernetes_namespace.ecommerce.metadata[0].name
}