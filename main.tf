# Declare the Terraform Module for Cloud Adoption Framework
# Enterprise-scale and provide a base configuration.
module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "~> 2.4.1"

  providers = {
    azurerm              = azurerm
    azurerm.management   = azurerm.management
    azurerm.connectivity = azurerm.connectivity
  }

  # Base module configuration settings.
  root_parent_id   = data.azurerm_client_config.current.tenant_id
  root_id          = local.root_id
  root_name        = local.root_name
  default_location = local.default_location

  # Control deployment of the core landing zone hierachy
  deploy_core_landing_zones        = true
  deploy_corp_landing_zones        = local.deploy_corp_landing_zones
  deploy_online_landing_zones      = local.deploy_online_landing_zones
  deploy_sap_landing_zones         = local.deploy_sap_landing_zones

  # Control deployment of platform "connectivity" resources
  subscription_id_connectivity     = data.azurerm_client_config.current.subscription_id
  deploy_connectivity_resources    = local.deploy_connectivity_resources
  configure_connectivity_resources = local.configure_connectivity_resources

  # Control deployment of platform "management" resources
  subscription_id_management       = data.azurerm_client_config.current.subscription_id
  deploy_management_resources      = local.deploy_management_resources
}
