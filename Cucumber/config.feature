# language: pt

Funcionalidade: Configuração de produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de um produto

  Cenário: Selecionar produto com todas as opções obrigatórias
    Quando seleciono a cor "Azul", o tamanho "M" e a quantidade 2
    Então o botão "Adicionar ao carrinho" deve estar habilitado

  Cenário: Não permitir adicionar produto com seleção incompleta
    Quando seleciono apenas a cor "Azul" e clico no botão "Adicionar ao carrinho"
    Então o sistema deve exibir mensagem de erro informando campos obrigatórios

  Cenário: Não permitir quantidade maior que o limite
    Quando seleciono a cor "Azul", o tamanho "M" e a quantidade 11
    Então o sistema deve exibir mensagem "Quantidade máxima permitida é 10"

  Cenário: Limpar configurações
    Dado que selecionei a cor "Azul", o tamanho "M" e a quantidade 2
    Quando clico no botão "Limpar"
    Então o produto deve voltar ao estado original