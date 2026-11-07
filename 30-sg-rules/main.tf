# mongodb accepting connections from bastion
resource "aws_security_group_rule" "mongodb_bastion" {
  type = "ingress"
  security_group_id = local.mongodb_sg_id
  source_security_group_id   = local.bastion_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# mongodb accepting connections from catalogue
resource "aws_security_group_rule" "mongodb_catalogue" {
  type = "ingress"
  security_group_id = local.mongodb_sg_id
  source_security_group_id   = local.catalogue_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 27017
  protocol          = "tcp"
  to_port           = 27017
}
############################################################################################
# mongodb accepting connections from user
resource "aws_security_group_rule" "mongodb_user" {
  type = "ingress"
  security_group_id = local.mongodb_sg_id
  source_security_group_id   = local.user_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 27017
  protocol          = "tcp"
  to_port           = 27017
}
############################################################################################
# redis accepting connections from bastion
resource "aws_security_group_rule" "redis_bastion" {
  type = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id   = local.bastion_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# redis accepting connections from user
resource "aws_security_group_rule" "redis_user" {
  type = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id   = local.user_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 6379
  protocol          = "tcp"
  to_port           = 6379
}
############################################################################################
# redis accepting connections from cart
resource "aws_security_group_rule" "redis_cart" {
  type = "ingress"
  security_group_id = local.redis_sg_id
  source_security_group_id   = local.cart_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 6379
  protocol          = "tcp"
  to_port           = 6379
}
############################################################################################
# mysql accepting connections from bastion
resource "aws_security_group_rule" "mysql_bastion" {
  type = "ingress"
  security_group_id = local.mysql_sg_id
  source_security_group_id   = local.bastion_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# mysql accepting connections from shipping
resource "aws_security_group_rule" "mysql_shipping" {
  type = "ingress"
  security_group_id = local.mysql_sg_id
  source_security_group_id   = local.shipping_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 3306
  protocol          = "tcp"
  to_port           = 3306
}
############################################################################################
# rabbitmq accepting connections from bastion
resource "aws_security_group_rule" "rabbitmq_bastion" {
  type = "ingress"
  security_group_id = local.rabbitmq_sg_id
  source_security_group_id   = local.bastion_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# rabbitmq accepting connections from payment
resource "aws_security_group_rule" "rabbitmq_payment" {
  type = "ingress"
  security_group_id = local.rabbitmq_sg_id
  source_security_group_id   = local.payment_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 5672
  protocol          = "tcp"
  to_port           = 5672
}
############################################################################################
# catalogue accepting connections from bastion
resource "aws_security_group_rule" "catalogue_bastion" {
  type = "ingress"
  security_group_id = local.catalogue_sg_id
  source_security_group_id   = local.bastion_sg_id
  #cidr_blocks = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# catalogue accepting connections from backend_alb
resource "aws_security_group_rule" "catalogue_backend_alb" {
  type              = "ingress"
  security_group_id = local.catalogue_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  protocol          = "tcp"
  to_port           = 8080
}
############################################################################################
# backend_alb accepting connections from cart
resource "aws_security_group_rule" "backend_alb_cart" {
  type              = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.cart_sg_id
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}
############################################################################################
# backend_alb accepting connections from shipping
resource "aws_security_group_rule" "backend_alb_shipping" {
  type              = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.shipping_sg_id
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}
############################################################################################
# backend_alb accepting connections from payment
resource "aws_security_group_rule" "backend_alb_payment" {
  type              = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.payment_sg_id
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}
############################################################################################
# user accepting connections from bastion
resource "aws_security_group_rule" "user_bastion" {
  type              = "ingress"
  security_group_id = local.user_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# user accepting connections from backend_alb
resource "aws_security_group_rule" "user_backend_alb" {
  type              = "ingress"
  security_group_id = local.user_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  protocol          = "tcp"
  to_port           = 8080
}
############################################################################################
# cart accepting connections from bastion
resource "aws_security_group_rule" "cart_bastion" {
  type              = "ingress"
  security_group_id = local.cart_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# cart accepting connections from backend_alb
resource "aws_security_group_rule" "cart_backend_alb" {
  type              = "ingress"
  security_group_id = local.cart_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  protocol          = "tcp"
  to_port           = 8080
}
############################################################################################
# shipping accepting connections from bastion
resource "aws_security_group_rule" "shipping_bastion" {
  type              = "ingress"
  security_group_id = local.shipping_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# shipping accepting connections from backend_alb
resource "aws_security_group_rule" "shipping_backend_alb" {
  type              = "ingress"
  security_group_id = local.shipping_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  protocol          = "tcp"
  to_port           = 8080
}
############################################################################################
# payment accepting connections from bastion
resource "aws_security_group_rule" "payment_bastion" {
  type              = "ingress"
  security_group_id = local.payment_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# payment accepting connections from backend-alb
resource "aws_security_group_rule" "payment_backend_alb" {
  type              = "ingress"
  security_group_id = local.payment_sg_id
  source_security_group_id = local.backend_alb_sg_id
  from_port         = 8080
  protocol          = "tcp"
  to_port           = 8080
}
############################################################################################
# backend-alb accepting connections from frontend
resource "aws_security_group_rule" "backend_alb_frontend" {
  type              = "ingress"
  security_group_id = local.backend_alb_sg_id
  source_security_group_id = local.frontend_sg_id
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}
############################################################################################
# frontend accepting connections from bastion
resource "aws_security_group_rule" "frontend_bastion" {
  type              = "ingress"
  security_group_id = local.frontend_sg_id
  source_security_group_id = local.bastion_sg_id
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# frontend accepting connections from frontend_alb
resource "aws_security_group_rule" "frontend_frontend_alb" {
  type              = "ingress"
  security_group_id = local.frontend_sg_id
  source_security_group_id = local.frontend_alb_sg_id
  from_port         = 80
  protocol          = "tcp"
  to_port           = 80
}
############################################################################################
# frontend_alb accepting connections from public
resource "aws_security_group_rule" "frontend_alb_public" {
  type              = "ingress"
  security_group_id = local.frontend_alb_sg_id
  cidr_blocks = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  to_port           = 443
}
############################################################################################
# bastion accepting connections from local
resource "aws_security_group_rule" "bastion_laptop" {
  type = "ingress"
  security_group_id = local.bastion_sg_id
  #source_security_group_id   = local.bastion_sg_id
  cidr_blocks = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################
# opev vpn accepting connections from public
resource "aws_security_group_rule" "bastion_laptop" {
  type = "ingress"
  security_group_id = local.open_vpn_sg_id
  #source_security_group_id   = local.bastion_sg_id
  cidr_blocks = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  to_port           = 22
}
############################################################################################









