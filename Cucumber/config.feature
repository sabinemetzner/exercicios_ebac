# language: pt

Funcionalidade: Configuração de produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de um produto

  Cenário: Selecionar produto com todas as opções obrigatórias
    Quando seleciono a cor "Azul"
    E seleciono o tamanho "M"
    E seleciono a quantidade 2
    Então o botão "Adicionar ao carrinho" deve estar habilitado

  Cenário: Não permitir adicionar produto sem selecionar cor
    Quando seleciono o tamanho "M"
    E seleciono a quantidade 2
    E clico no botão "Adicionar ao carrinho"
    Então deve ser exibida a mensagem "Selecione uma cor"

  Cenário: Não permitir adicionar produto sem selecionar tamanho
    Quando seleciono a cor "Azul"
    E seleciono a quantidade 2
    E clico no botão "Adicionar ao carrinho"
    Então deve ser exibida a mensagem "Selecione um tamanho"

  Cenário: Não permitir adicionar produto sem selecionar quantidade
    Quando seleciono a cor "Azul"
    E seleciono o tamanho "M"
    E clico no botão "Adicionar ao carrinho"
    Então deve ser exibida a mensagem "Selecione uma quantidade"

  Cenário: Não permitir quantidade maior que o limite permitido
    Quando seleciono a cor "Azul"
    E seleciono o tamanho "M"
    E informo a quantidade 11
    Então deve ser exibida a mensagem "Quantidade máxima permitida é 10"

  Cenário: Permitir quantidade dentro do limite
    Quando seleciono a cor "Azul"
    E seleciono o tamanho "M"
    E informo a quantidade 10
    Então o botão "Adicionar ao carrinho" deve estar habilitado

  Cenário: Limpar configurações do produto
    Dado que selecionei a cor "Azul", o tamanho "M" e a quantidade 2
    Quando clico no botão "Limpar"
    Então a cor não deve estar selecionada
    E o tamanho não deve estar selecionado
    E a quantidade deve estar vazia

  Esquema do Cenário: Validação de quantidade
    Quando seleciono a cor "Azul"
    E seleciono o tamanho "M"
    E informo a quantidade <quantidade>
    Então o sistema deve "<resultado>"

    Exemplos:
      | quantidade | resultado                                          |
      | 0          | exibir mensagem "Quantidade inválida"              |
      | 1          | habilitar botão "Adicionar ao carrinho"            |
      | 10         | habilitar botão "Adicionar ao carrinho"            |
      | 11         | exibir mensagem "Quantidade máxima permitida é 10" |
