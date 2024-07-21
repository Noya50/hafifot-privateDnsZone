variable "private_dns_zone_name" {
  description = "(Required) The of the private dns zone."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The resource group of the private dns zone."
  type        = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the private dns zone resource."
  type        = map(string)
  default     = {}
}

variable "soa_record_email" {
  description = "(Optional) The email contact for the SOA record. Required for soa record creation."
  type        = string
  default     = null
}

variable "soa_record_expire_time" {
  description = "(Optional) The expire time for the SOA record."
  default     = 2419200
  type        = number
}

variable "soa_record_ttl" {
  description = "(Optional) The Time To Live of the SOA Record in seconds."
  type        = number
  default     = 3600
}

variable "soa_record_minimum_ttl" {
  description = "(Optional) The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration."
  type        = number
  default     = 10
}

variable "soa_record_refresh_time" {
  description = "(Optional) The refresh time for the SOA record."
  type        = number
  default     = 3600
}

variable "soa_record_retry_time" {
  description = " (Optional) The retry time for the SOA record."
  default     = 300
  type        = number
}

variable "dns_a_records_ips_and_names" {
  description = "(Optional) List of ip lists for the a records."
  type        = map(set(string))
  default     = null
}

variable "ttl" {
  description = "(Optional) Time to live for the a records."
  type = number
  default = 300
}

variable "dns_a_records_ttl" {
  description = "(Optional) List of ttl values for the a records."
  type        = list(number)
  default     = null
}