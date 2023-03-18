variable "length" {
  type = number
  description = "Length of random string"
}

resource "random_string" "random" {
  length           = var.length
  special          = true
  override_special = "/@£$"
}

output "string" {
  value       = random_string.random.result
  description = "Our random string"
}
