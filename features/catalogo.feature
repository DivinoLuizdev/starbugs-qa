#language:pt


Funcionalidade: Catálogo de cafés  
    Como um usuário do site, eu quero ver o catálogo de cafés na página principal,  
    para que eu possa escolher e saber mais sobre os produtos disponíveis.

Cenário: Acessar o Catálago de cafés na página principal

    Quando acessar a pagina principal da Starbugs
    Então eu devo ver uma lista de cafés disponíveis

@temp
Cenário: inciar a compra de um café

    Dado que eu estou na página principal da Starbugs
        E que desejo compra o café "Expresso Gelado"
        E que esse produto custa R$ "9,99"
        E que o custo de entrega e de R$ "10,00"
    Quando inicio a compra de item
    Então devo ver a pagina de Checkout com os detalhes do produto 
        E o valor total da compra deve ser R$ "19,99"


@temp
Cenário: Café indisponivel
    Dado que eu estou na página principal da Starbugs
        E que desejo comprar o café "Expresso Cremoso"
    Quando inicio a compra desse item
    Então deve ver um pop-up informando que o produto está indisponível
        E o pop-up deve ter o texto "Produto indisponível"
        