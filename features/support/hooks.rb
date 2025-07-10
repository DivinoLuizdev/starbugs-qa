
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
After do |scenario|
  if scenario.failed?
    filename = "logs/screenshots/#{scenario.__id__}-#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.png"
    page.save_screenshot(filename)
    attach(File.open(filename), 'image/png', 'Screenshot')
  end
end
