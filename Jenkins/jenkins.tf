# terraform helm configuration which will install jenkins
# on the kubernetes cluster
#
#

resource "helm_release" "jenkins" {
  count            = var.create_eks_cluster ? 1 : 0
  name             = "jenkins"
  repository       = "https://charts.jenkins.io"
  chart            = "jenkins"
  namespace        = "jenkins"
  version          = "4.5.0"
  create_namespace = true

  set {
    name  = "controller.adminPassword"
    value = "admin"
  }

  set {
    name  = "controller.adminUser"
    value = "admin"
  }

  values = [
    file("jenkins-values.yaml"),
  ]
}



