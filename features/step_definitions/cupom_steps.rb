Dado('que iniciei a compra do item:') do |table|
    @product = table.rows_hash
    @Home.open
    @Home.buy(@product[:name])
end

Quando('aplico o seguinte cupom: {string}') do |cupom|
    @Checkout.assert_cupom(cupom)    
end

Então('o valor final da compra deve ser atualizado para R$ {string}') do |value|
   @Checkout.assert_total_price_cupom(value,@product)
end

Então('devo ver a notificação {string}') do |string|
    @Checkout.assert_notification(string)
end

Então('o valor total da compra deve permanecer R$ {string}') do |string|
    total_price_element = find('.total .total-price')
    expect(total_price_element.text).to eq "R$ #{string}"
end

 