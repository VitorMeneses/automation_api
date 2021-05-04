#language: pt

@REST
@api_users

Funcionalidade: Pesquisar usuários por nome
  Como endpoint de busca de usuários
  Quero buscar usuários por nome e id
  Para que eu obtenha suas informações

  Contexto: Obter usuário através do nome

  @buscar_por_nome_de_usuario
  Cenário: Realizar Busca de usuário por nome com return status code 200 e que contenham Naik no nome
    Quando solicito um GET com params de nome igual a naik
    Então o body do endpoint deve retornar a informacao do nome solicitado

  @busca_por_id
  Cenário: Realizar Busca por usuário pelo id com validação de return status code 200
    Dado que eu tenha obtido a informação do id do usuario
    Quando solicito um GET com id do usuario
    Então o retorno do endpoint deve ser conforme solicitado



