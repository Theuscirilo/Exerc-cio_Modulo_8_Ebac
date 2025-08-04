Feature: Cadastro no checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Background:
    Given que estou na página de cadastro da EBAC-SHOP

  Scenario Outline: Cadastro com dados inválidos ou incompletos
    When preencho o campo "Nome" com "<nome>"
    And preencho o campo "E-mail" com "<email>"
    And preencho o campo "Endereço" com "<endereco>"
    And clico no botão "Cadastrar"
    Then deve ser exibida a mensagem "<mensagem>"

    Examples:
      | nome       | email              | endereco           | mensagem                                            |
      | João Silva | joaoemail.com      | Rua A, 123         | E-mail inválido                                     |
      | Maria Lima | maria@teste.com    |                    | Preencha todos os campos obrigatórios               |
      |            | maria@teste.com    | Rua B, 456         | Preencha todos os campos obrigatórios               |

  Scenario: Cadastro válido
    When preencho todos os campos obrigatórios corretamente
    And clico no botão "Cadastrar"
    Then meu cadastro deve ser concluído com sucesso
