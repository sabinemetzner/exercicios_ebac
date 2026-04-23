# language: pt

Funcionalidade: Login na plataforma EBAC-SHOP

  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na tela "Minha Conta"
    E visualizo os campos "Username or email address" e "Password"

  Cenário: Login com credenciais válidas
    Quando preencho o campo usuário com "usuario@valido.com"
    E preencho o campo senha com "123456"
    E clico no botão "LOGIN"
    Então devo ser direcionado para a tela de checkout

  Cenário: Login com usuário inválido
    Quando preencho o campo usuário com "usuario@invalido.com"
    E preencho o campo senha com "123456"
    E clico no botão "LOGIN"
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"

  Cenário: Login com senha inválida
    Quando preencho o campo usuário com "usuario@valido.com"
    E preencho o campo senha com "senha_errada"
    E clico no botão "LOGIN"
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"

  Cenário: Login com campos vazios
    Quando não preencho o campo usuário
    E não preencho o campo senha
    E clico no botão "LOGIN"
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"

  Esquema do Cenário: Validação de múltiplas tentativas de login
    Quando preencho o campo usuário com "<usuario>"
    E preencho o campo senha com "<senha>"
    E clico no botão "LOGIN"
    Então o sistema deve "<resultado>"

    Exemplos:
      | usuario             | senha        | resultado                                    |
      | usuario@valido.com  | 123456       | direcionar para a tela de checkout           |
      | usuario@valido.com  | errado       | exibir mensagem "Usuário ou senha inválidos" |
      | invalido@email      | 123456       | exibir mensagem "Usuário ou senha inválidos" |
      |                     | 123456       | exibir mensagem "Usuário ou senha inválidos" |
      | usuario@valido.com  |              | exibir mensagem "Usuário ou senha inválidos" |
