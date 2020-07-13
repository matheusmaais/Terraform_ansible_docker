output "instance_ips" {
  value = ["${aws_instance.ubuntu.public_ip}"]
}