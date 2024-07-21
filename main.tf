resource "azurerm_private_dns_zone" "this" {
  name                = var.private_dns_zone_name
  resource_group_name = var.resource_group_name

  dynamic "soa_record" {
    for_each = var.soa_record_email != null ? [1] : []
    content {
      email        = var.soa_record_email
      expire_time  = var.soa_record_expire_time
      ttl          = var.soa_record_ttl
      minimum_ttl  = var.soa_record_minimum_ttl
      refresh_time = var.soa_record_refresh_time
      retry_time   = var.soa_record_retry_time
    }
  }

  lifecycle {
    ignore_changes = [tags]
  }
}

resource "azurerm_private_dns_a_record" "this" {
  for_each            = var.dns_a_records_ips_and_names
  name                = each.key
  zone_name           = azurerm_private_dns_zone.this.name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = each.value

  depends_on = [azurerm_private_dns_zone.this]

  lifecycle {
    ignore_changes = [tags, records]
  }
}