#language:pt


Funcionalidade: Catálogo de cafés  
    Como um usuário do site, eu quero ver o catálogo de cafés na página principal,  
    para que eu possa escolher e saber mais sobre os produtos disponíveis.

Cenário: Acessar o Catálago de cafés na página principal

    Quando acessar a pagina principal da Starbugs
    Então eu devo ver uma lista de cafés disponíveis


Cenário: inciar a compra de um café

    Dado que eu estou na página principal da Starbugs
        E que desejo compra o seguinte produto:
        |name  | Expresso Gelado |
        |price    | 9,99            |
        |delivery | 10,00           |
    Quando inicio a compra de item
    Então devo ver a pagina de Checkout com os detalhes do produto 
        E o valor total da compra deve ser R$ "19,99"



Cenário: Café indisponivel
    Dado que eu estou na página principal da Starbugs
        E que desejo compra o seguinte produto:
        |name  | Expresso Cremoso |
    Quando inicio a compra desse item
    Então deve ver um pop-up informando que o produto está indisponível
        E o pop-up deve ter o texto "Produto indisponível"

        