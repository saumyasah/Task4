resource "azurerm_kubernetes_cluster" "aks" {
  name                = "secure-aks-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "secureaks"

  private_cluster_enabled = false
  azure_policy_enabled    = true
  role_based_access_control_enabled = true

  default_node_pool {
    name           = "system"
    node_count     = 1
    vm_size        = "standard_dc2s_v3"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
  network_plugin    = "azure"
  network_policy    = "azure"
  load_balancer_sku = "standard"

  service_cidr   = "10.2.0.0/16"
  dns_service_ip = "10.2.0.10"
}

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.law.id
  }
}