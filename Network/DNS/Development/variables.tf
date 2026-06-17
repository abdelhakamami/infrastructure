variable "AZURE_SUBSCRIPTION_ID" {
  type        = string
  description = "Azure subscription ID"
}

variable "dns_zone_name" {
  description = "The name of the DNS zone."
  type        = string
}

variable "dns_a_record_name" {
  type = string
  default = "www"
}

variable "ttl" {
  type        = number
  default     = 3600
  description = "Time To Live (TTL) of the DNS record (in seconds)."
}

