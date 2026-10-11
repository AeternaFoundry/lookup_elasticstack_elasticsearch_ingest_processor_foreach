data "elasticstack_elasticsearch_ingest_processor_foreach" "elasticsearch_ingest_processor_foreach_lookup" {
  for_each = var.elasticsearch_ingest_processor_foreach_lookup

  field          = each.value.field
  processor      = each.value.processor
  description    = each.value.description
  if             = each.value.if
  ignore_failure = each.value.ignore_failure
  ignore_missing = each.value.ignore_missing
  on_failure     = each.value.on_failure
  tag            = each.value.tag
}

