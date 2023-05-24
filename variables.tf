variable "prefix_name" {
 type = string
}

variable "environment" {
 type = string
}
variable "tags" {
 type = map
}
variable "subnet_range" {
  type        = list(string)
  default     = ["10.2.0.0/24"]
  description = "Address range for session host subnet"
}
variable "vnet_range" {
  type        = list(string)
  default     = ["10.2.0.0/21"]
  description = "Address range for deployment VNet"
}
variable "address_of_subnet" {
  type        = string
  default     = "10.2.0.0/24"
}
variable "ad_vnet" {
  type        = string
  default     = "infra-network"
  description = "Name of domain controller vnet"
}
variable "is_public" {
    type        = list(bool)
    default     = [true, true, true, false, false, false]
}