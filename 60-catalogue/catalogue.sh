#!/bin/bash

# component=$1
# environment=$2
# dnf install ansible -y

# cd /home/ec2-user
# git clone https://github.com/kirankumar-kosuri/ansible-roboshop-roles.tf.git
# cd ansible-roboshop-roles.tf
# git pull

# REPO_URL=https://github.com/kirankumar-kosuri/ansible-roboshop-roles.tf.git
# REPO_DIR=/opt/roboshop/ansible
# ANSIBLE_DIR=ansible-roboshop-roles-tf

# mkdir -p $REPO_DI
# mkdir -p /var/log/roboshop/
# touch ansible.log

# cd $REPO_DIR/$ANSIBLE_DIR

# # check if ansible repo is already cloned or not

# if [ -d $ANSIBLE_DIR ]; then

#     cd $ANSIBLE_DIR
#     git pull
# else
#     git clone $REPO_URL
#     cd $ANSIBLE_DIR
# fi
# echo "environment is: $2"
# ansible-playbook -e component=$component -e env=$environment main.yaml




component=$1
environment=$2
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/kirankumar-kosuri/ansible-roboshop-roles.tf.git
cd ansible-roboshop-roles.tf
git pull

mkdir -p /var/log/roboshop/
touch ansible.log

echo "environment is: $2"
ansible-playbook -e component=$component -e env=$environment main.yaml