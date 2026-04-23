# language: pt

Funcionalidade: Cadastro no Checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de Checkout

  Cenário: Cadastro concluído com sucesso
    Quando preencho todos os campos obrigatórios:
      | nome  | sobrenome | pais   | endereco | cidade | cep      | telefone   | email           |
      | Maria | Silva     | Brasil | Rua A    | SP     | 12345678 | 1199999999 | maria@email.com |
    E clico no botão "Finalizar Compra"
    Então o sistema deve concluir o cadastro com sucesso

  Cenário: Exibir erro ao deixar campos obrigatórios vazios
    Quando não preencho todos os campos obrigatórios
    E clico no botão "Finalizar Compra"
    Então deve ser exibida mensagem de alerta informando campos obrigatórios

  Cenário: Exibir erro para e-mail inválido
    Quando preencho o campo e-mail com "usuario@dominio"
    E preencho os demais campos obrigatórios corretamente
    E clico no botão "Finalizar Compra"
    Então deve ser exibida mensagem de erro "E-mail inválido"

  Cenário: Cadastro com campos opcionais preenchidos
    Quando preencho todos os campos obrigatórios corretamente
    E preencho o campo "Nome da empresa" com "EBAC"
    E clico no botão "Finalizar Compra"
    Então o sistema deve concluir o cadastro com sucesso

  Esquema do Cenário: Validação de cadastro com diferentes dados
    Quando preencho nome "<nome>"
    E preencho sobrenome "<sobrenome>"
    E preencho país "<pais>"
    E preencho endereço "<endereco>"
    E preencho cidade "<cidade>"
    E preencho CEP "<cep>"
    E preencho telefone "<telefone>"
    E preencho email "<email>"
    E clico no botão "Finalizar Compra"
    Então o sistema deve "<resultado>"

    Exemplos:
      | nome  | sobrenome | pais   | endereco | cidade | cep      | telefone   | email           | resultado                              |
      | Maria | Silva     | Brasil | Rua A    | SP     | 12345678 | 1199999999 | maria@email.com | concluir cadastro com sucesso          |
      | João  | Souza     | Brasil | Rua B    | RJ     | 87654321 | 2198888888 | usuario@dominio | exibir mensagem "E-mail inválido"      |
      | Ana   | Lima      | Brasil | Rua C    | MG     |          | 3197777777 | ana@email.com   | exibir alerta de campos obrigatórios   |
      | Pedro | Santos    | Brasil | Rua D    | BA     | 11223344 |            | pedro@email.com | exibir alerta de campos obrigatórios   |
      | Carla | Souza     | Brasil | Rua E    | RS     | 99887766 | 5196666666 |                 | exibir alerta de campos obrigatórios   |
