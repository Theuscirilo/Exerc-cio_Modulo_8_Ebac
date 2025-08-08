Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  Para depois inserir no carrinho

  Contexto:
    Dado que estou na página de configuração do produto

  Cenário: Selecionar cor, tamanho e quantidade obrigatórios
    Quando seleciono a cor, o tamanho e a quantidade do produto
    Então o botão "Adicionar ao carrinho" deve estar habilitado

  Cenário: Limitar quantidade máxima por venda
    Quando tento selecionar uma quantidade maior que 10
    Então o sistema deve exibir a mensagem "Quantidade máxima permitida: 10"

  Cenário: Limpar seleção
    Dado que já configurei um produto
    Quando clico no botão "Limpar"
    Então todas as seleções devem voltar ao estado original
