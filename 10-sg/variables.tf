variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  default = [

    # Databases
    "mongodb","mysql","redis","rabbitmq",

    # Backend
    "catalogue","user","cart","shipping","payment",

    # Frontend
    "frontend",

    # Bastion
    "bastion",

    # Frontend Load Balancer
    "frontend_alb",

    # Backend Load Balancer
    "backend_alb",

   # Open-Vpn
    "open-vpn"
  ]
}