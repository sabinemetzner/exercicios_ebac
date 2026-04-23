# language: pt

Funcionalidade: Login na plataforma EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na tela "Minha Conta"
    E visualizo os campos "Username or email address" e "Password"

  Cenário: Login com credenciais válidas
    Quando preencho o campo usuário com "usuario@valido.com", o campo senha com "123456" e clico no botão "LOGIN"
    Então devo ser direcionado para a tela de checkout

  Esquema do Cenário: Exibir mensagem de alerta para credenciais inválidas
    Quando preencho o campo usuário com "<usuario>", o campo senha com "<senha>" e clico no botão "LOGIN"
    Então o sistema deve exibir "<resultado>"

    Exemplos:
      | usuario              | senha        | resultado                      |
      | usuario@invalido.com | 123456       | mensagem de alerta "Usuário ou senha inválidos" |
      | usuario@valido.com   | senha_errada | mensagem de alerta "Usuário ou senha inválidos" |
      |                      | 123456       | mensagem de alerta "Usuário ou senha inválidos" |
      | usuario@valido.com   |              | mensagem de alerta "Usuário ou senha inválidos" |
