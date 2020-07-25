#!bin/bash
echo "\n ========================= \n"
echo "\nIniciando Execução do Script \n \n"
echo "Setando Variaveis de ambiente \n"
export ANSIBLE_HOST_KEY_CHECKING=False
echo "\n ========================= \n"
echo "\n Rodando terraform Init"
sleep 1
terraform init 
echo "\n ========================= \n"
echo "Rodando terraform Apply"
terraform apply -auto-approve
echo "\n ========================= \n"
echo "Aguardando o servidor ficar pronto para rodar o Ansible"
ansible-playbook ansible_server/provisioning.yml -i ansible_server/hosts
echo "\n =========================== \n\n"
echo "\n Jenkins Passwd inicial é\n" 
cat JenkinsPassword
unset IP_SERVIDOR
export IP_SERVIDOR=$(cat ./ip_servidor.txt) 
echo "\nAcesso a aplicação: http://$IP_SERVIDOR:3000\n"
echo "Acesso ao Jenkins: http://$IP_SERVIDOR:8080\n"
echo "\n\nPara destruir o ambiente digite: \n terraform destroy"
echo "Script finalizado!"

