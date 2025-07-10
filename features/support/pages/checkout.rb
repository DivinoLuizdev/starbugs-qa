require 'rspec/expectations'


class Checkout
    include Capybara::DSL
    include RSpec::Matchers

    def assert_product_details(product)
        
        product_title = find('.item-details h1')
        expect(product_title.text).to eq(product[:name])

        sub_price_price = find('.subtotal .sub-price')
        expect(sub_price_price.text).to eq "R$ #{product[:price]}"

    end
    def assert_total_price(value,product)

        expect(page).to have_css('.total .total-price')

        total_price_element = find('.total .total-price')

        product_price = product[:price].gsub(',', '.').to_f
        delivery_price = product[:delivery].gsub(',', '.').to_f
        total_price_value = product_price + delivery_price

        formatted_total = "R$ #{'%.2f' % total_price_value}".gsub('.', ',')

        expect(total_price_element.text).to eq formatted_total
        expect(formatted_total).to eq "R$ #{value}"
    end 

    def find_zip_code(zip_code)
        find('input[name=cep]').set(zip_code)
        find("input[value='Buscar CEP']").click
    end
    def fill_address_data(number,details)
        find("input[name='number']").set(number)
        find("input[name='complement']").set(details)
    end   
    def choice_payment(payment)
        find('label div', text: payment.upcase).click        
    end
    def confirm_order
        find('button[type=submit]').click
    end
end