resource "kubernetes_deployment" "mysql" {
  metadata {
    name      = "mysql"
    namespace = var.namespace

    labels = {
      app = "mysql"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "mysql"
      }
    }

    template {
      metadata {
        labels = {
          app = "mysql"
        }
      }

      spec {
        container {
          image = var.mysql_image
          name  = "mysql"

          port {
            container_port = 3306
          }

          env {
            name  = "MYSQL_ROOT_PASSWORD"
            value = "root"
          }

          env {
            name  = "MYSQL_DATABASE"
            value = "ecommerce"
          }
        }
      }
    }
  }

  depends_on = [
    kubernetes_namespace.ecommerce
  ]
}

resource "kubernetes_service" "mysql" {

  metadata {
    name      = "mysql"
    namespace = var.namespace
  }

  spec {

    selector = {
      app = "mysql"
    }

    port {
      port        = 3306
      target_port = 3306
    }

    type = "ClusterIP"
  }

  depends_on = [
    kubernetes_deployment.mysql
  ]
}