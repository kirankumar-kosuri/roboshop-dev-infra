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