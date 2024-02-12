#language: pt

Funcionalidade: Catálogo de cafés
    Como um usuário do site, eu quero ver o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais os produtos disponíveis.

Cenário: Acessar o catálogo de cafés na página principal
    Quando acesso a página principal da Starbugs
    Então eu devo ver uma lista de cafés disponíveis
    
@smoke
Cenário: Iniciar a compra de um café
    Dado que estou na página principal da Starbucks
    Quando seleciono para comprar o café:
    | name  | Expresso Americano |
    | price    | R$9,90             |
    | delivery | R$3,50             |
    #  |  product            |  price  |  delivery |
    #  |  Expresso Americano |  R$9,90 |  R$3,50   |
    E clico no carrinho para finalizar a compra
    Então devo visualizar a página de checkout com os detalhes do produtos
    E o valor total da compra deve ser de R$ 13.40
