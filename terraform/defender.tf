    resource "azurerm_security_center_subscription_pricing" "defender_k8s" {
  tier          = "Standard"
  resource_type = "KubernetesService"
}

resource "azurerm_security_center_subscription_pricing" "defender_acr" {
  tier          = "Standard"
  resource_type = "ContainerRegistry"
}