            #language: pt

            Funcionalidade: Calculadora

            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenario: Soma de 2 números
            Dado que acesse a calculadora
            E eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenario: Soma de 2 números
            Quando eu somar o <num1> com <num2>
            Entao deve exibir a <resposta>

            Exemplos:
            | num1         | num2         | resposta     |
            | "152"        | "347"        | "499"        |
            | "-720"       | "1540"       | "820"        |
            | "15,13"      | "38,14"      | "53,27"      |
            | "-40"        | "-73"        | "-113"       |
            | "1000000"    | "15377888"   | "16377888"   |
            | "-40"        | "-35"        | "-75"        |
            | "0"          | "7"          | "7"          |
            | "0"          | "-4"         | "-4"         |
            | "0"          | "0"          | "0"          |
            | "1,13337"    | "5,39975"    | "6,53312"    |
            | "12"         | "15,23"      | "27,23"      |
            | "7%"         | "23%"        | "30%"        |
            | "-0,1"       | "0,1"        | "0"          |
            | "1,2"        | "1"          | "2,2"        |
            | "9"          | "0"          | "9"          |
            | "-13"        | "0"          | "-13"        |
            | "0,10000003" | "0,75555531" | "0,85555534" |
            | "12,1"       | "0"          | "12,1"       |
            | "0"          | "4,2"        | "4,2"        |
            | "-1,9"       | "-3,6"       | "-5,5"       |







