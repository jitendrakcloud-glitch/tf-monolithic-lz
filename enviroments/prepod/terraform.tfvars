rgs =  {
  rg1 = {
    name     = "mera-rg"
    location = "southindia"
  }
}
vnets = {
  vnet = {
    name                = "mera-vnet"
    location            = "southindia"
    resource_group_name = "mera-rg"
    address_space       = ["10.0.0.0/16"]
  }
}
    subnets = {
    snet1 = {
        name = "frontend-subnet"
    resource_group_name = "mera-rg"
    virtual_network_name = "mera-vnet"
    address_prefixes = ["10.0.1.0/24"]
    }
snet2 = {
    name ="backend-subnet"
    resource_group_name = "mera-rg"
    virtual_network_name = "mera-vnet"
    address_prefixes = ["10.0.2.0/24"]
}

}
publicip = {
    pip1 = {
        name        = "pip-frontend-vm"
  resource_group_name = "mera-rg"
  location            = "southindia"
  allocation_method   = "Static"
    }
    pip2 = {
        name        = "pip-backend-vm"
  resource_group_name = "mera-rg"
  location            = "southindia"
  allocation_method   = "Static"
    }
}
vms = {
  vm1 = {
    nic_name        = "frontend-vm-nic"
    location        = "southindia"
    rg_name         = "mera-rg"
    nic_subnet_name = "frontend-subnet"
    nic_vnet_name   = "mera-vnet"
    nic_pip_name    = "pip-frontend-vm"
    vm_name         = "frontend-vm"
    vm_size         = "Standard_B2ats_v2"
    admin_username  = "devopsadmin"
    admin_password  = "India123"
  }
  vm2 = {
    nic_name        = "backend-vm-nic"
    location        = "southindia"
    rg_name         = "mera-rg"
    nic_subnet_name = "backend-subnet"
    nic_vnet_name   = "mera-vnet"
    nic_pip_name    = "pip-backend-vm"
    vm_name         = "backend-name"
    vm_size         = "Standard_B2ats_v2"
    admin_username  = "devopsadmin"
    admin_password  = "India123"
  }
}

ai_services = {
  ai1 = {
    name                  = "prepod-ai-agent-openai"
    location              = "eastus"
    resource_group_name   = "mera-rg"
    sku_name              = "S0"
    custom_subdomain_name = "prepod-ai-agent-openai"

    deployments = {
      gpt4o_mini = {
        name          = "gpt-4o-mini"
        model_format  = "OpenAI"
        model_name    = "gpt-4o-mini"
        model_version = "2024-07-18"
        sku_name      = "Standard"
        capacity      = 10
      }
      text_embedding = {
        name          = "text-embedding-3-small"
        model_format  = "OpenAI"
        model_name    = "text-embedding-3-small"
        model_version = "1"
        sku_name      = "Standard"
        capacity      = 10
      }
    }

    enable_search_service = true
    search_service_name   = "prepod-ai-agent-search"
    search_service_sku    = "basic"

    create_agent_identity = true
    identity_name         = "prepod-ai-agent-identity"
  }
}

