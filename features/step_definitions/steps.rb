
Quando('acessar a pagina principal da Starbugs') do
    @home.open
end

Então('eu devo ver uma lista de cafés disponíveis') do    
    expect(@home.coffes.size).to be > 0
end

 
Dado('que eu estou na página principal da Starbugs') do
    @home.open
end
Dado('que desejo compra o seguinte produto:') do |table|     
    @product = table.rows_hash   
end


Quando('inicio a compra de item') do
     @home.buy(@product[:name])     
end

Então('devo ver a pagina de Checkout com os detalhes do produto') do   
    @checkout.assert_product_details(@product)
end

Então('o valor total da compra deve ser R$ {string}') do |expected_total|
    @checkout.assert_total_price(expected_total, @product)
  
end


Quando('inicio a compra desse item') do
    @home.buy(@product[:name])  
    
end

Então('deve ver um pop-up informando que o produto está indisponível') do
    @Popup.assert_popup_text('Produto indisponível')
     
end

Então('o pop-up deve ter o texto {string}') do |string|
    @Popup.assert_popup_text(string)
      
end

 
