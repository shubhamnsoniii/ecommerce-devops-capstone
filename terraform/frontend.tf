resource "kubernetes_deployment" "frontend" {

  metadata {
    name      = "frontend"
    namespace = var.namespace

    labels = {
      app = "frontend"
    }
  }

  spec {

    replicas = 1

    selector {
      match_labels = {
        app = "frontend"
      }
    }

    template {

      metadata {
        labels = {
          app = "frontend"
        }
      }

      spec {

        container {

          name  = "frontend"
          image = var.frontend_image

          image_pull_policy = "Always"

          port {
            container_port = 80
          }

        }

      }

    }

  }

  depends_on = [
    kubernetes_service.product_service,
    kubernetes_service.order_service,
    kubernetes_service.inventory_service
  ]
}

resource "kubernetes_service" "frontend" {

  metadata {
    name      = "frontend"
    namespace = var.namespace
  }

  spec {

    selector = {
      app = "frontend"
    }

    port {

      port        = 80
      target_port = 80
      node_port   = 30001

    }

    type = "NodePort"

  }

  depends_on = [
    kubernetes_deployment.frontend
  ]
}