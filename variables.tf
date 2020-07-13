variable "region" {
    default = "us-east-1"
}

/*Variaveis de security grou
variable "http_port" {
    default = 80
}
variable "ssh_port" {
    default = 22
}
#variavel do MEU IP
variable "my_system" { 
    default = "0.0.0.0/0"
}*/
#variavel AMI e tipo da instancia
variable "ami" {
    default = "ami-068663a3c619dd892"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "tag"{
    default = "MY_TAG"
}
#Change MY_PATH for path where is your aws key
variable "ansible_ssh_key" {
    default = "ansible_ssh_private_key_file=/MY_PATH/MY_KEY.pem"
}

variable "ansible_group"{
    default = "[MY_GROUP]"
}
#Change MY_PATH for the path where is your git clone was done
variable "ansible_host_path" {
    default = "/MY_PATH/ansible_server/hosts"
}

#Change my_key_name for the name of your aws key (without .pem at the end)
variable "key_name"{
    default = "MY_KEY"
}
variable "ansible_user"{
    default = "ansible_ssh_user=ubuntu"
}
variable "server_ip_path"{
    default = "."
}


