require 'rspec/expectations'
class OrderPage
    include Capybara::DSL
    include RSpec::Matchers
    
    def assert_order
        expect(find('h1').text).to eq 'Uhull! Pedido confirmado'
        expect(find('p[color=subtitle]').text).to eq 'Agora é só aguardar que logo o café chegará até você'
    end


    def assert_time_delivery(target)     
        delivery_time = find('p',text:'Previsão de entrega')
        expect(delivery_time.find('strong').text).to eq target
    end
end