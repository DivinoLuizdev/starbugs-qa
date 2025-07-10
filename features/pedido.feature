#language:pt

Funcionalidade: Pedidos
    Como um usuário do site Starbugs, eu quero fazer seleciona e comprar cafés
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entregar

 
Cenário: Compra bem sucedida

    Dado que eu estou na página principal da Starbugs
        E que iniciei a compra do item "Expresso Tradicional"
    Quando faço a busca do seguinte Cep:"04534011"    
        E informo os demais dados do endereço:
            |number| 1000             |
            |complement | Apto 22     |
        E escolho a forma de pagamento "Cartão de Débito"
        E por fim finalizo a compra
    Então sou redirecionado para a página de confirmação do pedido
        E deve ser informado um prazo de entregar entre '20 min - 30 min'
        
        