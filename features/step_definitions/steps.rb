
Quando('acessar a pagina principal da Starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end

Então('eu devo ver uma lista de cafés disponíveis') do
    products = all('.coffee-item')
    expect(products.size).to be > 0
end

 
Dado('que eu estou na página principal da Starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end
Dado('que desejo compra o seguinte produto:') do |table|     
    @product = table.rows_hash   
end


Quando('inicio a compra de item') do
    product = find('.coffee-item', text: @product[:name])
    product.find('.buy-coffee').click
     
end

Então('devo ver a pagina de Checkout com os detalhes do produto') do
    product_title =  find('.item-details h1')
    expect(product_title.text).to eq(@product[:name])

    sub_price_price = find('.subtotal .sub-price')
    expect(sub_price_price.text).to eq "R$ #{@product[:price]}"

end

Então('o valor total da compra deve ser R$ {string}') do |expected_total|
  expect(page).to have_css('.total .total-price')

  total_price_element = find('.total .total-price')


  product = @product[:price].gsub(',', '.').to_f
  delivery =@product[:delivery].gsub(',', '.').to_f
  total_price_value = product + delivery

  formatted_total = "R$ #{'%.2f' % total_price_value}".gsub('.', ',')

  expect(total_price_element.text).to eq formatted_total
  expect(formatted_total).to eq "R$ #{expected_total}"
end

# ---------------------

Quando('inicio a compra desse item') do
     
    product = find('.coffee-item', text: @product[:name])
    product.find('.buy-coffee').click
end

Então('deve ver um pop-up informando que o produto está indisponível') do
    pop_up = find('.swal2-html-container')
    expect(pop_up.text).to eq 'Produto indisponível'
end

Então('o pop-up deve ter o texto {string}') do |string|
    modal_pop_up = find('.swal2-popup .swal2-html-container', text: 'Produto indisponível')
    expect(modal_pop_up.text).to eq string
end
# -------------------
 