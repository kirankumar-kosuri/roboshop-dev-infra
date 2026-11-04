# Creating Ec2 Instance
resource "aws_instance" "catalogue" {
    ami = local.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [local.catalogue_sg_id]
    subnet_id = local.private_subnet_id
    
    tags = merge (
        local.common_tags,
        {
            Name = "${local.common_name_suffix}-catalogue" # roboshop-dev-mongodb
        }
    )
}

# Connect to instance using remote exec provisinor through terraform data
resource "aws_instance" "catalogue" {
    ami = local.ami_id
    instance_type = "t2.micro"
    vpc_security_group_ids = [local.catalogue_sg_id]
    subnet_id = local.private_subnet_id
    
    tags = merge (
        local.common_tags,
        {
            Name = "${local.common_name_suffix}-catalogue" # roboshop-dev-catalogue
        }
    )
}

resource "terraform_data" "catalogue" {
  triggers_replace = [
    aws_instance.catalogue.id
  ]
  
  connection {
  type     = "ssh"
  user     = "ec2-user"
  password = "DevOps321"
  host     = aws_instance.catalogue.private_ip
}

  # terraform copies this file to catalogue server
  provisioner "file" {
  source      = "catalogue.sh"
  destination = "/tmp/catalogue.sh"
}

provisioner "remote-exec" {
  inline = [
    "chmod +x /tmp/catalogue.sh",
    "sudo bash -x /tmp/catalogue.sh catalogue ${var.environment}"
  ]
}
}
