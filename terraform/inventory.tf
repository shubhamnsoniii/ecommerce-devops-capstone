resource "kubernetes_deployment" "inventory_service" {

  metadata {
    name      = "inventory-service"
    namespace = var.namespace

    labels = {
      app = "inventory-service"
    }
  }

  spec {

    replicas = 1

    selector {
      match_labels = {
        app = "inventory-service"
      }
    }

    template {

      metadata {
        labels = {
          app = "inventory-service"
        }
      }

      spec {

        container {

          name  = "inventory-service"
          image = var.inventory_image

          image_pull_policy = "Always"

          port {
            container_port = 5002
          }

        }

      }

    }

  }

  depends_on = [
    kubernetes_service.mysql
  ]
}

resource "kubernetes_service" "inventory_service" {

  metadata {
    name      = "inventory-service"
    namespace = var.namespace
  }

  spec {

    selector = {
      app = "inventory-service"
    }

    port {
      port        = 5002
      target_port = 5002
      node_port   = 32221
    }

    type = "NodePort"
  }

  depends_on = [
    kubernetes_deployment.inventory_service
  ]
}