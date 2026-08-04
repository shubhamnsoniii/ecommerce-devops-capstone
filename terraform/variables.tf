variable "namespace" {
  default = "shubham-ecommerce"
}

variable "frontend_image" {
  default = "shubham5799/frontend:v1"
}

variable "product_image" {
  default = "shubham5799/product-service:v1"
}

variable "order_image" {
  default = "shubham5799/order-service:v1"
}

variable "inventory_image" {
  default = "shubham5799/inventory-service:v1"
}

variable "mysql_image" {
  default = "mysql:8"
}