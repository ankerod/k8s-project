variable "do_region" {
  type    = string
  default = "nyc3"
}

variable "do_token" {
  type        = string
  description = "DigitalOcean API token"
  sensitive   = true
}
