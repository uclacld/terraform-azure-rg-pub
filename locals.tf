locals {

  module_tags = {}
  
  all_tags     = merge(local.module_tags, var.tags)

}