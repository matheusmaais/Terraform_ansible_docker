
variable "region" {
    default = ""
}
variable "ami" { #it's ubuntu 20.04 default image, not tested in another ubuntu release
    default = ""
}
variable "instance_type" {
    default = ""
}
#change by your tag
variable "tag"{
    default = ""
}
#Change MY_PATH for path where is your aws key and MY_KEY for your aws keyname.pem
variable "ansible_ssh_key" {
    default = ""
}
#change MY_GROUP for anything that you want
variable "ansible_group"{
    default = ""
}
#DO NOT CHANGE
variable "ansible_host_path" {
    default = "./ansible_server/hosts"
}

variable "key_name"{
    default = ""
}

variable "ansible_user"{
    default = ""
}
#do not change
variable "server_ip_path"{
    default = "./ip_servidor.txt"
 } 

variable "security_group"{
    default = ""
}


