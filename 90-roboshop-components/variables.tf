variable "component" {
  default = "catalogue"
}

variable "rule_priority" {
  default = 10
}

variable "components" {
  default = {
    catalogue = {
      rule_priority = 10
      instance_type = "t2.micro"
    }

    user = {
      rule_priority = 20
      instance_type = "t2.micro"
    }

    cart = {
      rule_priority = 30
      instance_type = "t2.micro"
    }

    shipping = {
      rule_priority = 40
      instance_type = "t3.micro"
    }

    payment = {
      rule_priority = 50
      instance_type = "t2.micro"
    }

    frontend = {
      rule_priority = 10
      instance_type = "t2.micro"
    }
  }
}