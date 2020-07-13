# Terraform_ansible_docker
O que este código faz:
     - Provisiona uma instancia ec2 na aws via terraform
     - Atualiza os pacotes ( apt update)
        - Instala o Docker
        - Instala o Docker Compose
        - Clona um repositorio git
        - Roda um container no localhost:3000 ( apenas demo)
        - Roda um container com o Jenkins no localhost:8000

Como faz:
  -  terraform provisiona a estrutura, copiando para o arquivo hosts do ansible:
        - O ip da máquina criada
        - Formata o arquivo hosts para passar o caminho da chave publica e o usuario
  -  Ansible:
        - Faz a atualização dos pacotes
        - Instala docker e docker-compose
        - Clona repositorio matheusmaais/testegit
        - Coloca rodar o container com a aplicacao demo
        - Roda o docker-compose que possui o Jenkins 
        - Aguarda o arquivo de senha inicial do Jenkins ser criado
        - Exporta este arquivo para a máquina local no diretorio raiz do repo

INSTRUÇOES DE USO:

Requisitos:

Criar usuario pragmatico no IAM da AWS com acesso de administrador.
Anotar Acess Key e Secret Key

  - Instalar AWS CLI
https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2.html

$aws configure
digitar as credenciais.

  - Instalar Terraform
https://www.terraform.io/downloads.html

  - Instalar Ansible
https://www.digitalocean.com/community/tutorials/como-instalar-e-configurar-o-ansible-no-ubuntu-18-04-pt

  -  Clonar o repositório
  -  Fazer as substituições necessarias no arquivo variables.tf
  -  Criar um security group e substituir pelo security_group no arquivo instance.tf
  -  No diretório raiz do repo rodar:
        sh run.sh
