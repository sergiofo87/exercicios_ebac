# language: pt

    Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    E escolher a quantidade
    Para depois inserir no carrinho

    Contexto: 
    Dado que sou um clinte da EBAC-SHOP

    Esquema do Cenario: Seleções de cor, tamanho e quantidade
    Quando eu seleciono <cor> e <tamanho> e <quantidade>
    E insiro o produto no carrinho
    Então o produto deve ser adicionado ao meu carrinho

    Exemplos: 
      | cor    | tamanho | quantidade |
      | Blue   | S       |          5 |
      | Orange | M       |          8 |
      | Red    | XL      |          1 |
      | Orange | XS      |         10 |
      | Red    | XL      |          3 |

    Esquema do Cenario: Restrição de produtos por venda
    Quando eu selecionar a <cor> e <tamanho>
    E selecionar a <quantidade>
    Então deve exibir a <mensagem>

    Exemplos: 
      | cor    | tamanho | quantidade | mensagem                                           |
      | orange | XL      |          9 | "Item adicionado ao carrinho"                      |
      | red    | XS      |         10 | "Item adicionado ao carrinho"                      |
      | blue   | M       |         11 | "Você pode adicionar no máximo 10 itens por venda" |

    Esquema do Cenario: Limpar Seleções
    Quando eu selecionar a <cor> e <tamanho> e <quantidade>
    E clicar no botão "Limpar"
    Então todas as seleções devem ser redefinidas para o padrão original
