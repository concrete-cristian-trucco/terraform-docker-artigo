## terraform-docker

### Hands on

### Instalando o terraform no Play With Docker
```
wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
unzip terraform_0.11.8_linux_amd64.zip
mv terraform /bin/
terraform
```

### Clonar o Repositorio 
```
git clone https://gitlab.com/cristianvitortrucco/terraform-docker


cd terraform-docker 

````

### Rodar o Terraform

- Inicializar o terraform e baixar os plugins

```
terraform init
```

- Verificar com o comando a seguir o terraform irá provisionar esse comando é uma previa.
```
terraform plan
```

- Após verificar a saida, o comando apply vai construir a infra estrutura declarada no arquivo main.tf
```
```
terraform apply
```
- Confirmar com "yes" para realizar o deploy.
