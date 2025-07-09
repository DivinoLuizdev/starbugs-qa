
Quando('acessar a pagina principal da Starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end

Então('eu devo ver uma lista de cafés disponíveis') do
    products = all('.coffee-item')
    expect(products.size).to be > 0
end

# ---------------------


Dado('que eu estou na página principal da Starbugs') do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('que desejo compra o café {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('que esse produto custa R$ {float}') do |float|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('que o custo de entrega e de R$ {float}') do |float|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('inicio a compra de item') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deve ver a pagina de Checkout com os detalhes do produto') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('o valor total da compra deve ser R$ {float}') do |float|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado('que desejo comprar o café {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando('inicio a compra desse item') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deve ver um pop-up informando que o produto está indisponível') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('o pop-up deve ter o texto {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end