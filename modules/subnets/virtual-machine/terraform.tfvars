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