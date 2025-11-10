module "catalogue" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${local.common_name_suffix}-catalogue"
  use_name_prefix = false
  description = "Security group for with custom ports open within VPC, aggress all traffic"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value
}