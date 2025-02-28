module "dns_zones" {
  source   = "./modules/networking/dns_zone"
  for_each = try(local.networking.dns_zones, {})

  base_tags           = try(local.global_settings.inherit_tags, false) ? module.resource_groups[each.value.resource_group_key].tags : {}
  client_config       = local.client_config
  global_settings     = local.global_settings
  resource_group_name = module.resource_groups[each.value.resource_group_key].name
  settings            = each.value

  resource_ids = {
    public_ip_addresses = local.combined_objects_public_ip_addresses
  }
}

output "dns_zones" {
  value = module.dns_zones
}

#
# Create records on remote DNS zones
#
module "dns_zone_records" {
  source     = "./modules/networking/dns_zone/records"
  for_each   = try(local.networking.dns_zone_records, {})
  depends_on = [module.dns_zones]

  base_tags           = {}
  client_config       = local.client_config
  resource_group_name = try(each.value.dns_zone.resource_group_name, null) == null ? local.combined_objects_dns_zones[lookup(each.value.dns_zone, "lz_key", local.client_config.landingzone_key)][each.value.dns_zone.key].resource_group_name : each.value.dns_zone.resource_group_name
  records             = each.value.records
  zone_name           = try(each.value.dns_zone.name, null) == null ? local.combined_objects_dns_zones[lookup(each.value.dns_zone, "lz_key", local.client_config.landingzone_key)][each.value.dns_zone.key].name : each.value.dns_zone.name

  resource_ids = {
    public_ip_addresses = local.combined_objects_public_ip_addresses
  }
}


output "dns_zone_records" {
  value = module.dns_zone_records
}