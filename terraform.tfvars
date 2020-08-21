
region = "us-east-1"
ami = "ami-068663a3c619dd892" //it`s a ubuntu20 AMI, but you can change as you wish
instance_type = "t2.micro"
key_name = "your_key" //name of your key, created by aws
security_group = "yourSg"
tag = "MY_TAG" //It`s basicaly the name of your server
ansible_group = "[MY_GROUP]" //Ansible group, you dont need modify this item
//"ansible_ssh_private_key_file=/MY_PATH/MY_KEY.pem"
ansible_ssh_key = "ansible_ssh_private_key_file=/Path" //Change  ONLY MY_PATH/MY_KEY.pem by the path of your aws key
ansible_user = "ansible_ssh_user=ubuntu"


