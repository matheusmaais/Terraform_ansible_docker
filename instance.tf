resource "aws_instance" "ubuntu" {
  ami           = var.ami 
  instance_type = var.instance_type
  key_name = var.key_name
 
  security_groups = [var.security_group] //Change by your security aws security group ( ports must be open 8080, 3000 and 5000)

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

