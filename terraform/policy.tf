data "azurerm_subscription" "current" {}

resource "azurerm_subscription_policy_assignment" "aks_pss" {
  name                 = "aks-baseline-pss"
  subscription_id      = data.azurerm_subscription.current.id
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/95edb821-ddaf-4404-9732-666045e056b4"
}