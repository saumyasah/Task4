output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "keyvault_name" {
  value = azurerm_key_vault.kv.name
}