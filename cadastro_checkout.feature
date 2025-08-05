Funcionalidade: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que estou na página de cadastro da EBAC-SHOP

  Esquema do Cenário: Cadastro com dados inválidos ou incompletos
    Quando preencho o campo Nome com "<nome>", o campo E-mail com "<email>" e o campo Endereço com "<endereco>" e clico no botão "Cadastrar"
    Então deve ser exibida a mensagem "<mensagem>"

    Exemplos:
      | nome       | email              | endereco           | mensagem                                            |
      | João Silva | joaoemail.com      | Rua A, 123         | E-mail inválido                                     |
      | Maria Lima | maria@teste.com    |                    | Preencha todos os campos obrigatórios               |
      |            | maria@teste.com    | Rua B, 456         | Preencha todos os campos obrigatórios               |

  Cenário: Cadastro válido
    Quando preencho todos os campos obrigatórios corretamente e clico no botão "Cadastrar"
    Então meu cadastro deve ser concluído com sucesso
