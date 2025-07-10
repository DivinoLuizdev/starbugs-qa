#language:pt

Funcionalidade: Uso de Cupons no Checkout
Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout,
Para que eu possa obter reduções no preço de produtos, 
aumentando a satisfação com a minha experiência de compra.

Contexto:
    Dado que iniciei a compra do item:
            |name     | Café com Leite     |
            |price    | 19,99              |
            |delivery | 10,00              |
            |total    | 29,99              | 

Cenário: Aplicar Desconto de 20%
    Quando aplico o seguinte cupom: "MEUCAFE"   
    Então o valor final da compra deve ser atualizado para R$ "25,99"


Cenário: Aplicar cupom expirado no checkout
  Quando aplico o seguinte cupom: "PROMO20"
  Então devo ver a notificação "Cupom expirado!"
    E o valor total da compra deve permanecer R$ "29,99"


Cenário: Cupom Inválido
    Quando aplico o seguinte cupom: "PROMO10"
    Então devo ver a notificação "Cupom inválido!"
    E o valor total da compra deve permanecer R$ "29,99"
