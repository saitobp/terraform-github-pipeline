# Terraform Github Pipeline

Exemplo de como subir uma instancia EC2 da AWS usando a pipeline do Github actions

## Configurando o repositorio

É necessario ter acesso a uma conta da AWS para poder gerar a chave de acesso

1. Dentro do console da AWS, vá para o painel do IAM e crie um novo usuario, este usuario será usado pelo terraform para provisionar as instancias
2. Na aba de permissões, adicione a permissão de AdministratorAccess
3. Na aba de credenciais de segurança, crie uma nova chave de acesso
4. Adicione como secrets o id da chave de acesso e o secret da chave de acesso, *AWS_ACCESS_KEY_ID* e *AWS_SECRET_ACCESS_KEY*