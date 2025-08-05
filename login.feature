Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login da EBAC-SHOP

  Cenário: Login com dados válidos
    Quando informo um usuário e senha válidos e clico no botão "Entrar"
    Então devo ser direcionado para a tela de checkout

  Cenário: Login com dados inválidos
    Quando informo um usuário ou senha inválidos e clico no botão "Entrar"
    Então deve ser exibida a mensagem "Usuário ou senha inválidos"
