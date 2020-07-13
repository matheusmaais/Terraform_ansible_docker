variable "region" {
    default = "us-east-1"
}
variable "ami" { #it's ubuntu 20.04 default image, not tested in another ubuntu release
    default = "ami-068663a3c619dd892"
}
variable "instance_type" {
    default = "t2.micro"
}
#change by your tag
variable "tag"{
    default = "MY_TAG"
}
#Change MY_PATH for path where is your aws key and MY_KEY for your aws keyname.pem
variable "ansible_ssh_key" {
    default = "ansible_ssh_private_key_file=/MY_PATH/MY_KEY.pem"
}
#change MY_GROUP for anything that you want
variable "ansible_group"{
    default = "[MY_GROUP]"
}
#DO NOT CHANGE
variable "ansible_host_path" {
    default = "./ansible_server/hosts"
}

#Change my_key_name for the name of your aws key (without .pem at the end)
variable "key_name"{
    default = "MY_KEY"
}
#if you're using ubuntu distribuition by aws, it works fine
variable "ansible_user"{
    default = "ansible_ssh_user=ubuntu"
}
#do not change
variable "server_ip_path"{
    default = "./ip_servidor.txt"
}


