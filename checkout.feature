Feature: Tela de cadastro (Checkout)
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

  Background: 
    Given eu sou um cliente da EBAC-SHOP

  Scenario Outline: Cadastro válido
    When eu preencher os campos <nome> e <sobrenome> e <país> e <endereço> e <cidade> e <telefone> e <email>
    And clicar no botão "Concluir cadastro"
    Then deve exibir a <mensagem>

    Examples: 
      | nome   | sobrenome | país   | endereço  | cidade | telefone       | email                     | mensagem                         |
      | Sergio | Oliveira  | Brasil | Av Brasil, 125 | Osasco | (11)99888-0003 | sergio.oliveira@gmail.com | "Cadastro concluído com Sucesso" |

  Scenario Outline: E-mail de formato inválido
    When eu preencher os campos <nome> e <sobrenome> e <país> e <endereço> e <cidade> e <telefone> e <email>
    And clicar no botão "Concluir cadastro"
    Then deve exibir a <mensagem>

    Examples: 
      | nome   | sobrenome | país   | endereço  | cidade | telefone       | email           | mensagem                     |
      | Sergio | Oliveira  | Brasil | Av Brasil, 125 | Osasco | (11)99888-0003 | ninguemgmailcom | "Formato de e-mail inválido" |

  Scenario Outline: Campos vazios
    When eu preencher os campos <nome> e <sobrenome> e <país> e <endereço> e <cidade> e <telefone> e <email>
    And clicar no botão "Concluir cadastro"
    Then deve exibir a <mensagem>

    Examples: 
      | nome   | sobrenome | país   | endereço | cidade | telefone | email           | mensagem                                |
      | Sergio | Oliveira  | Brasil |          | Osasco |          | sergio.oliveira@gmail.com | "Preencha todos os campos obrigatórios" |
