resource "kubernetes_deployment" "product_service" {

  metadata {
    name      = "product-service"
    namespace = var.namespace

    labels = {
      app = "product-service"
    }
  }

  spec {

    replicas = 1

    selector {
      match_labels = {
        app = "product-service"
      }
    }

    template {

      metadata {
        labels = {
          app = "product-service"
        }
      }

      spec {

        container {

          name  = "product-service"
          image = var.product_image

          image_pull_policy = "Always"

          port {
            container_port = 5000
          }

        }

      }

    }

  }

  depends_on = [
    kubernetes_service.mysql
  ]
}

resource "kubernetes_service" "product_service" {

  metadata {
    name      = "product-service"
    namespace = var.namespace
  }

  spec {

    selector = {
      app = "product-service"
    }

    port {

      port        = 5000
      target_port = 5000
      node_port   = 30261

    }

    type = "NodePort"

  }

  depends_on = [
    kubernetes_deployment.product_service
  ]
}