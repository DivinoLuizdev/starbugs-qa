
require_relative './pages/home'
require_relative './pages/checkout'
require_relative './pages/components'
require_relative './pages/order'
Before do
    @Home = HomePage.new
    @Checkout = Checkout.new
    @Popup = Popup.new
    @Order = OrderPage.new
end