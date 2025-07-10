require 'rspec/expectations'

class Popup
    include Capybara::DSL
    include RSpec::Matchers  

    def assert_popup_text(text)
        pop_up = find('.swal2-html-container')
        expect(pop_up.text).to eq text
    end
end
