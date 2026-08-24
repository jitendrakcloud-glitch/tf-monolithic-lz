variable "rgs" {}
variable "vnets" {}
variable "subnets" {}
variable "publicip" {}
variable "vms" {}
variable "ai_services" {}


module "resource_group" {
  source = "../../modules/resource-group"
  rgs    = var.rgs
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/virtual-network"
  vnets      = var.vnets
}
module "subnets" {
  depends_on = [module.virtual_network]
  source     = "../../modules/subnets"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../modules/public-ip"
  publicip   = var.publicip
}
module "virtual_machine" {
  depends_on = [module.subnets, module.public_ip]
  source     = "../../modules/virtual-machine"
  vms        = var.vms
}

module "ai_services" {
  depends_on  = [module.resource_group]
  source      = "../../modules/ai-services"
  ai_services = var.ai_services
}
