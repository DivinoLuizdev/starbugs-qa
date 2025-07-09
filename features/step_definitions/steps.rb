
Quando('acessar a pagina principal da Starbugs') do
    visit 'https://starbugs-qa.vercel.app/'
end

Então('eu devo ver uma lista de cafés disponíveis') do
    products = all('.coffee-item')
    expect(products.size).to be > 0

end
