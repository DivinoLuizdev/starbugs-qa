Dado('que iniciei a compra do item {string}') do |product_name|
   @Home.buy(product_name)
end

Quando('faço a busca do seguinte Cep:{string}') do |cep| 
    @Checkout.find_zip_code(cep)       
end

Quando('informo os demais dados do endereço:') do |table|
    @details = table.rows_hash   
    @Checkout.fill_address_data(@details[:number],@details[:complement])

 
end

Quando('escolho a forma de pagamento {string}') do |payment_type|
   
    
    @Checkout.choice_payment(payment_type)
   
end

Quando('por fim finalizo a compra') do
    @Checkout.confirm_order
  
    
end

Então('sou redirecionado para a página de confirmação do pedido') do
    @Order.assert_order
     
end

Então('deve ser informado um prazo de entregar entre {string}') do |string|
   @Order.assert_time_delivery(string)
end