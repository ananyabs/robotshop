provider "kubernetes" {
  config_path = "~/.kube/config"
}
provider "helm" {
  kubernetes {
        config_context_cluster= "minikube"
        config_path = "~/.kube/config"
  }
}


resource "helm_release" "robot-shop" {
  name          = "robot-shop"
  chart         = "C:\\Users\\bsan\\Desktop\\robot-shop\\K8s\\helm"
  
}