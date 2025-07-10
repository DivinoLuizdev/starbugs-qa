
require_relative './pages/home'
require_relative './pages/checkout'
require_relative './pages/components'
Before do
    @home = HomePage.new
    @checkout = Checkout.new
    @Popup = Popup.new
end