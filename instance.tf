resource "aws_instance" "ubuntu" {
  ami           = var.ami 
  instance_type = var.instance_type
  key_name = var.key_name
 
  security_groups = ["SG1"] //attacha o Security group na instancia

  //adiciona tags na instancia
  tags = {
    Name = "${var.tag}"
  }
  #alterar o caminho do arquivo host do ansible
  provisioner "local-exec" {
    command = "echo ${var.ansible_group} '\n' ${aws_instance.ubuntu.public_ip} ${var.ansible_ssh_key} ${var.ansible_user} > ${var.ansible_host_path}"
    
  }
  provisioner "local-exec"{
    command = "echo ${aws_instance.ubuntu.public_ip} > ${var.server_ip_path}  "
  }
}

