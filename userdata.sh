#! /bin/bash
sudo su \
apt update \
apt install -y python3
#sudo systemctl start apache2
#sudo systemctl enable apache2
#sudo /bin/echo "Hello world " >/var/www/html/index.html
#curl http://169.254.169.254/latest/meta-data/local-ipv4 >> /var/www/html/index.html
#sudo instance_ip = `curl http://169.254.169.254/latest/meta-data/local-ipv4`
#sudo echo $instance_ip >>/var/www/html/index.html
#echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html