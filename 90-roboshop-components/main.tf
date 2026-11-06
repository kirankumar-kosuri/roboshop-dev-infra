module "components" {
  source = "git::https://github.com/kirankumar-kosuri/terraform-roboshop-component.git?ref=main"
  component = var.component
  rule_priority = var.rule_priority
}