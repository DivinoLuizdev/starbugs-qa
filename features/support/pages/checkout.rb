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

end