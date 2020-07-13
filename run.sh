#!bin/bash
echo "\n ========================= \n"
echo "\nIniciando Execução do Script \n \n"
echo "Setando Variaveis de ambiente \n"
export ANSIBLE_HOST_KEY_CHECKING=False
echo "\n ========================= \n"
sleep 5
echo "\n Rodando terraform Init"
sleep 3
terraform init 
echo "\n ========================= \n"
echo "Rodando terraform Apply"
terraform apply -auto-approve
echo "\n ========================= \n"
echo "Aguardando o servidor ficar pronto para rodar o Ansible"
sleep 30
cd ansible_server
ansible-playbook provisioning.yml -i hosts
sleep 15
echo "\n ========================= \n"
echo "\n Jenkins Passwd inicial é\n" 
cat ~/testedevops/initialAdminPassword
export IP_SERVIDOR=$(cat ./ip_servidor) 
echo "\nAcesso a aplicação: http://$IP_SERVIDOR:3000\n"
echo "Acesso ao Jenkins: http://$IP_SERVIDOR:8080\n"
echo "Script finalizado"
