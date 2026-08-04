resource "kubernetes_deployment" "order_service" {

  metadata {
    name      = "order-service"
    namespace = var.namespace

    labels = {
      app = "order-service"
    }
  }

  spec {

    replicas = 1

    selector {
      match_labels = {
        app = "order-service"
      }
    }

    template {

      metadata {
        labels = {
          app = "order-service"
        }
      }

      spec {

        container {

          name  = "order-service"
          image = var.order_image

          image_pull_policy = "Always"

          port {
            container_port = 5001
          }

        }

      }

    }

  }

  depends_on = [
    kubernetes_service.mysql
  ]
}

resource "kubernetes_service" "order_service" {

  metadata {
    name      = "order-service"
    namespace = var.namespace
  }

  spec {

    selector = {
      app = "order-service"
    }

    port {
      port        = 5001
      target_port = 5001
      node_port   = 30789
    }

    type = "NodePort"
  }

  depends_on = [
    kubernetes_deployment.order_service
  ]
}