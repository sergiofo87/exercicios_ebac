Feature: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Background: 
    Given eu sou um cliente da EBAC-SHOP

  Scenario: Autenticação válida
    When eu digitar o usuário "sergio.oliveira@gmail.com"
    And a senha "sucesso@123"
    Then deve exibir uma mensagem de sucesso "Olá Sergio"
    And devo ser direcionado ao dashboard

  Scenario: Usuário ou senha inválidos
    When eu digitar o usuário "ningue@gmail.com"
    And a senha "erro@123"
    Then deve exibir uma mensagem de erro "Usuário ou senha inválidos"

  Scenario Outline: Validar login
    When eu digitar o <usuario>
    And digitar a <senha>
    Then deve exibir a <mensagem>

    Examples: 
      | usuario                   | senha       | mensagem                     |
      | sergio.oliveira@gmail.com | sucesso@123 | "Olá Sergio"                 |
      | ninguem@gmail.com         | erro@123    | "Usuário ou senha inválidos" |
