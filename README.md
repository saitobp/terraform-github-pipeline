# Terraform Github Pipeline

Exemplo de como subir uma instancia EC2 da AWS usando a pipeline do Github actions

## Configurando o repositorio

É necessario ter acesso a uma conta da AWS para poder gerar a chave de acesso

1. Dentro do console da AWS, vá para o painel do IAM e crie um novo usuario, este usuario será usado pelo terraform para provisionar as instancias
2. Na aba de permissões, adicione a permissão de AdministratorAccess
3. Na aba de credenciais de segurança, crie uma nova chave de acesso
4. Adicione como secrets o id da chave de acesso e o secret da chave de acesso, *AWS_ACCESS_KEY_ID* e *AWS_SECRET_ACCESS_KEY*

## Módulos

### App Module

Modulo para criar uma aplicação simples, composta de uma instancia EC2 para o frontend em uma VPC publica e uma instancia EC2 para o backend em uma VPC privada com um RDS para banco de dados

#### Variaveis

**[Obrigatório] app_name:** Nome da aplicação

**[Obrigatório] db_name:** Nome do banco de dados

**[Opcional] app_instances_count:** Quantidade de instancias que serão criadas (*Valor padrão: 1*)

**[Opcional] db_password:** Senha do banco de dados (*Valor padrão: password*)

**[Opcional] db_username:** Usuario do banco de dados (*Valor padrão: postgres*)
