## terraform-docker

### Hands on

### Play With Docker (PWD)

* http://play-with-docker.com/

- Obs: Esse será o ambiente que utilizares para o lab necessário ter uma conta no Github ou Dockerhub.

### Instalando o terraform no Play With Docker
- Rodar sequência de comandos a seguir no terminal do PWD.

```
wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
unzip terraform_0.11.8_linux_amd64.zip
mv terraform /bin/
terraform
```

### Clonar o Repositório 
```
git clone https://gitlab.com/cristianvitortrucco/terraform-docker


cd terraform-docker 

````

### Rodar o Terraform

- Inicializar o terraform e automaticamente irá baixar os plugins necessários.

```
terraform init
```

- Verificar com o comando a seguir o que o terraform irá provisionar, esse comando é uma previa.

```
terraform plan
```

- Após verificar a saida, o comando apply vai construir a infra estrutura declarada no arquivo main.tf

```
terraform apply
```
- Confirmar com "yes" para realizar o deploy.
