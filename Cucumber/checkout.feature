# language: pt

Funcionalidade: Cadastro no Checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de Checkout

  Cenário: Finalizar cadastro com todos os campos obrigatórios preenchidos
    Dado que preencho os campos obrigatórios com os seguintes dados:
      | nome  | sobrenome | pais        | endereco | cidade     | cep      | telefone   | email           |
      | Maria | Silva     | Reino Unido | Rua A    | Londres    | 12345678 | 1199999999 | maria@email.com |
      | João  | Souza     | Reino Unido | Rua B    | Manchester | 87654321 | 2198888888 | joao@email.com  |
    Quando clico no botão "Finalizar Compra"
    Então o sistema deve concluir o cadastro com sucesso

  Cenário: Finalizar cadastro com campos opcionais preenchidos
    Quando preencho todos os campos obrigatórios corretamente, informo o campo "Nome da empresa" com "EBAC" e clico no botão "Finalizar Compra"
    Então o sistema deve concluir o cadastro com sucesso

  Cenário: Exibir erro ao informar e-mail em formato inválido
    Quando preencho nome "João", sobrenome "Souza", país "Reino Unido", endereço "Rua B", cidade "Manchester", CEP "87654321", telefone "2198888888", email "usuario@dominio" e clico no botão "Finalizar Compra"
    Então o sistema deve exibir a mensagem "E-mail inválido"

  Esquema do Cenário: Exibir alerta para campos obrigatórios não preenchidos
    Quando preencho o checkout sem informar "<campo_obrigatorio>" e clico no botão "Finalizar Compra"
    Então o sistema deve exibir "<resultado>"

    Exemplos:
      | campo_obrigatorio  | resultado                       |
      | Nome               | alerta de campos obrigatórios   |
      | Sobrenome          | alerta de campos obrigatórios   |
      | Endereço           | alerta de campos obrigatórios   |
      | Cidade             | alerta de campos obrigatórios   |
      | CEP                | alerta de campos obrigatórios   |
      | Telefone           | alerta de campos obrigatórios   |
      | Endereço de e-mail | alerta de campos obrigatórios   |
